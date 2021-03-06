require File.expand_path('../spec_helper', __FILE__)

describe Signature do
  before :each do
    Time.stub!(:now).and_return(Time.at(1234))

    @token = Signature::Token.new('key', 'secret')

    @request = Signature::Request.new('POST', '/some/path', {
      "query" => "params",
      "go" => "here"
    })
    @signature = @request.sign(@token)[:auth_signature]
  end

  it "should generate base64 encoded signature from correct key" do
    @request.send(:string_to_sign).should == "POST\n/some/path\nauth_key=key&auth_timestamp=1234&auth_version=1.0&go=here&query=params"
    @signature.should == '3b237953a5ba6619875cbb2a2d43e8da9ef5824e8a2c689f6284ac85bc1ea0db'
  end

  it "should make auth_hash available after request is signed" do
    request = Signature::Request.new('POST', '/some/path', {
      "query" => "params"
    })
    lambda {
      request.auth_hash
    }.should raise_error('Request not signed')

    request.sign(@token)
    request.auth_hash.should == {
      :auth_signature => "da078fcedd72941b6c873caa40d0d6b2000ebfc700cee802b128dd20f72e74e9",
      :auth_version => "1.0",
      :auth_key => "key",
      :auth_timestamp => '1234'
    }
  end

  it "should cope with symbol keys" do
    @request.query_hash = {
      :query => "params",
      :go => "here"
    }
    @request.sign(@token)[:auth_signature].should == @signature
  end

  it "should cope with upcase keys (keys are lowercased before signing)" do
    @request.query_hash = {
      "Query" => "params",
      "GO" => "here"
    }
    @request.sign(@token)[:auth_signature].should == @signature
  end

  it "should use the path to generate signature" do
    @request.path = '/some/other/path'
    @request.sign(@token)[:auth_signature].should_not == @signature
  end

  it "should use the query string keys to generate signature" do
    @request.query_hash = {
      "other" => "query"
    }
    @request.sign(@token)[:auth_signature].should_not == @signature
  end

  it "should use the query string values to generate signature" do
    @request.query_hash = {
      "key" => "notfoo",
      "other" => 'bar'
    }
    @request.sign(@token)[:signature].should_not == @signature
  end

  describe "verification" do
    before :each do
      Time.stub!(:now).and_return(Time.at(1234))
      @request.sign(@token)
      @params = @request.query_hash.merge(@request.auth_hash)
    end

    it "should verify requests" do
      request = Signature::Request.new('POST', '/some/path', @params)
      request.authenticate_by_token(@token).should == true
    end

    it "should raise error if signature is not correct" do
      @params[:auth_signature] =  'asdf'
      request = Signature::Request.new('POST', '/some/path', @params)
      lambda {
        request.authenticate_by_token!(@token)
      }.should raise_error('Invalid signature: you should have sent HmacSHA256Hex("POST\n/some/path\nauth_key=key&auth_timestamp=1234&auth_version=1.0&go=here&query=params", your_secret_key), but you sent "asdf"')
    end

    it "should raise error if timestamp not available" do
      @params.delete(:auth_timestamp)
      request = Signature::Request.new('POST', '/some/path', @params)
      lambda {
        request.authenticate_by_token!(@token)
      }.should raise_error('Timestamp required')
    end

    it "should raise error if timestamp has expired (default of 600s)" do
      request = Signature::Request.new('POST', '/some/path', @params)
      Time.stub!(:now).and_return(Time.at(1234 + 599))
      request.authenticate_by_token!(@token).should == true
      Time.stub!(:now).and_return(Time.at(1234 - 599))
      request.authenticate_by_token!(@token).should == true
      Time.stub!(:now).and_return(Time.at(1234 + 600))
      lambda {
        request.authenticate_by_token!(@token)
      }.should raise_error("Timestamp expired: Given timestamp (1970-01-01T00:20:34Z) not within 600s of server time (1970-01-01T00:30:34Z)")
      Time.stub!(:now).and_return(Time.at(1234 - 600))
      lambda {
        request.authenticate_by_token!(@token)
      }.should raise_error("Timestamp expired: Given timestamp (1970-01-01T00:20:34Z) not within 600s of server time (1970-01-01T00:10:34Z)")
    end

    it "should be possible to customize the timeout grace period" do
      grace = 10
      request = Signature::Request.new('POST', '/some/path', @params)
      Time.stub!(:now).and_return(Time.at(1234 + grace - 1))
      request.authenticate_by_token!(@token, grace).should == true
      Time.stub!(:now).and_return(Time.at(1234 + grace))
      lambda {
        request.authenticate_by_token!(@token, grace)
      }.should raise_error("Timestamp expired: Given timestamp (1970-01-01T00:20:34Z) not within 10s of server time (1970-01-01T00:20:44Z)")
    end

    it "should be possible to skip timestamp check by passing nil" do
      request = Signature::Request.new('POST', '/some/path', @params)
      Time.stub!(:now).and_return(Time.at(1234 + 1000))
      request.authenticate_by_token!(@token, nil).should == true
    end
    
    it "should check that auth_version is supplied" do
      @params.delete(:auth_version)
      request = Signature::Request.new('POST', '/some/path', @params)
      lambda {
        request.authenticate_by_token!(@token)
      }.should raise_error('Version required')
    end

    it "should check that auth_version equals 1.0" do
      @params[:auth_version] = '1.1'
      request = Signature::Request.new('POST', '/some/path', @params)
      lambda {
        request.authenticate_by_token!(@token)
      }.should raise_error('Version not supported')
    end

    describe "when used with optional block" do
      it "should optionally take a block which yields the signature" do
        request = Signature::Request.new('POST', '/some/path', @params)
        request.authenticate do |key|
          key.should == @token.key
          @token
        end.should == @token
      end

      it "should raise error if no auth_key supplied to request" do
        @params.delete(:auth_key)
        request = Signature::Request.new('POST', '/some/path', @params)
        lambda {
          request.authenticate { |key| nil }
        }.should raise_error('Authentication key required')
      end

      it "should raise error if block returns nil (i.e. key doesn't exist)" do
        request = Signature::Request.new('POST', '/some/path', @params)
        lambda {
          request.authenticate { |key| nil }
        }.should raise_error('Invalid authentication key')
      end
    end
  end
end
