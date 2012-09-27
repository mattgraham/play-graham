require "spec_helper"
require "foreman"

describe Foreman do

  describe "VERSION" do
    subject { Foreman::VERSION }
    it { should be_a String }
  end

  describe "::load_env!(env_file)", :fakefs do
    after do
      ENV['FOO'] = nil
    end

    it "should load env_file into ENV" do
      File.open("/tmp/env1", "w") { |f| f.puts("FOO=bar") }
      Foreman.load_env!("/tmp/env1")
      ENV['FOO'].should == 'bar'
    end

    it "should assume env_file in ./.env" do
      File.open("./.env", "w") { |f| f.puts("FOO=bar") }
      Foreman.load_env!
      ENV['FOO'].should == 'bar'
    end
  end

  describe "runner" do
    it "should exist" do
      File.exists?(Foreman.runner).should == true
    end
  end
end
