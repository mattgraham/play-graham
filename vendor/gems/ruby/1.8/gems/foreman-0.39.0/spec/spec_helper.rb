require "rubygems"

require "simplecov"
SimpleCov.start do
  add_filter "/spec/"
end

require "rspec"
require "fakefs/safe"
require "fakefs/spec_helpers"

$:.unshift File.expand_path("../../lib", __FILE__)

def mock_export_error(message)
  lambda { yield }.should raise_error(Foreman::Export::Exception, message)
end

def mock_error(subject, message)
  mock_exit do
    mock(subject).puts("ERROR: #{message}")
    yield
  end
end

def foreman(args)
  Foreman::CLI.start(args.split(" "))
end

def mock_exit(&block)
  block.should raise_error(SystemExit)
end

def write_foreman_config(app)
  File.open("/etc/foreman/#{app}.conf", "w") do |file|
    file.puts %{#{app}_processes="alpha bravo"}
    file.puts %{#{app}_alpha="1"}
    file.puts %{#{app}_bravo="2"}
  end
end

def write_procfile(procfile="Procfile", alpha_env="")
  File.open(procfile, "w") do |file|
    file.puts "alpha: ./alpha" + " #{alpha_env}".rstrip
    file.puts "\n"
    file.puts "bravo:\t./bravo"
  end
  File.expand_path(procfile)
end

def write_env(env=".env", options={"FOO"=>"bar"})
  File.open(env, "w") do |file|
    options.each do |key, val|
      file.puts "#{key}=#{val}"
    end
  end
end

def load_export_templates_into_fakefs(type)
  FakeFS.deactivate!
  files = Dir[File.expand_path("../../data/export/#{type}/**", __FILE__)].inject({}) do |hash, file|
    hash.update(file => File.read(file))
  end
  FakeFS.activate!
  files.each do |filename, contents|
    File.open(filename, "w") do |f|
      f.puts contents
    end
  end
end

def resource_path(filename)
  File.expand_path("../resources/#{filename}", __FILE__)
end

def example_export_file(filename)
  FakeFS.deactivate!
  data = File.read(File.expand_path(resource_path("export/#{filename}"), __FILE__))
  FakeFS.activate!
  data
end

def preserving_env
  old_env = ENV.to_hash
  begin
    yield
  ensure
    ENV.clear
    ENV.update(old_env)
  end
end

def normalize_space(s)
  s.gsub(/\n[\n\s]*/, "\n")
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.color_enabled = true
  config.order = 'rand'
  config.include FakeFS::SpecHelpers, :fakefs
  config.mock_with :rr
end
