# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sinatra_auth_github"
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Corey Donohoe"]
  s.date = "2012-01-19"
  s.description = "A sinatra extension for easy oauth integration with github"
  s.email = ["atmos@atmos.org"]
  s.homepage = "http://github.com/atmos/sinatra_auth_github"
  s.require_paths = ["lib"]
  s.rubyforge_project = "sinatra_auth_github"
  s.rubygems_version = "1.8.24"
  s.summary = "A sinatra extension for easy oauth integration with github"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, ["~> 1.0"])
      s.add_runtime_dependency(%q<yajl-ruby>, ["~> 1.1"])
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.6.1"])
      s.add_runtime_dependency(%q<warden-github>, ["~> 0.3.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_development_dependency(%q<shotgun>, [">= 0"])
      s.add_development_dependency(%q<ZenTest>, ["~> 4.5.0"])
      s.add_development_dependency(%q<randexp>, ["~> 0.1.5"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.5.3"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0"])
    else
      s.add_dependency(%q<sinatra>, ["~> 1.0"])
      s.add_dependency(%q<yajl-ruby>, ["~> 1.1"])
      s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
      s.add_dependency(%q<warden-github>, ["~> 0.3.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_dependency(%q<shotgun>, [">= 0"])
      s.add_dependency(%q<ZenTest>, ["~> 4.5.0"])
      s.add_dependency(%q<randexp>, ["~> 0.1.5"])
      s.add_dependency(%q<rack-test>, ["~> 0.5.3"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
    end
  else
    s.add_dependency(%q<sinatra>, ["~> 1.0"])
    s.add_dependency(%q<yajl-ruby>, ["~> 1.1"])
    s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
    s.add_dependency(%q<warden-github>, ["~> 0.3.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 1.3.0"])
    s.add_dependency(%q<shotgun>, [">= 0"])
    s.add_dependency(%q<ZenTest>, ["~> 4.5.0"])
    s.add_dependency(%q<randexp>, ["~> 0.1.5"])
    s.add_dependency(%q<rack-test>, ["~> 0.5.3"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
  end
end
