# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "warden-github"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Corey Donohoe"]
  s.date = "2012-06-12"
  s.description = "A warden strategy for easy oauth integration with github"
  s.email = ["atmos@atmos.org"]
  s.homepage = "http://github.com/atmos/warden-github"
  s.require_paths = ["lib"]
  s.rubyforge_project = "warden-github"
  s.rubygems_version = "1.8.24"
  s.summary = "A warden strategy for easy oauth integration with github"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, ["~> 1.5"])
      s.add_runtime_dependency(%q<warden>, ["~> 1.0"])
      s.add_runtime_dependency(%q<oauth2>, ["~> 0.5.2"])
      s.add_runtime_dependency(%q<octokit>, ["~> 1.4.0"])
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.6.1"])
      s.add_runtime_dependency(%q<yajl-ruby>, ["~> 1.1"])
      s.add_development_dependency(%q<rack>, ["~> 1.4.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<webrat>, [">= 0"])
      s.add_development_dependency(%q<sinatra>, [">= 0"])
      s.add_development_dependency(%q<shotgun>, [">= 0"])
      s.add_development_dependency(%q<addressable>, ["~> 2.2.0"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.5.3"])
    else
      s.add_dependency(%q<json>, ["~> 1.5"])
      s.add_dependency(%q<warden>, ["~> 1.0"])
      s.add_dependency(%q<oauth2>, ["~> 0.5.2"])
      s.add_dependency(%q<octokit>, ["~> 1.4.0"])
      s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
      s.add_dependency(%q<yajl-ruby>, ["~> 1.1"])
      s.add_dependency(%q<rack>, ["~> 1.4.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<webrat>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<shotgun>, [">= 0"])
      s.add_dependency(%q<addressable>, ["~> 2.2.0"])
      s.add_dependency(%q<rack-test>, ["~> 0.5.3"])
    end
  else
    s.add_dependency(%q<json>, ["~> 1.5"])
    s.add_dependency(%q<warden>, ["~> 1.0"])
    s.add_dependency(%q<oauth2>, ["~> 0.5.2"])
    s.add_dependency(%q<octokit>, ["~> 1.4.0"])
    s.add_dependency(%q<rest-client>, ["~> 1.6.1"])
    s.add_dependency(%q<yajl-ruby>, ["~> 1.1"])
    s.add_dependency(%q<rack>, ["~> 1.4.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<webrat>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<shotgun>, [">= 0"])
    s.add_dependency(%q<addressable>, ["~> 2.2.0"])
    s.add_dependency(%q<rack-test>, ["~> 0.5.3"])
  end
end
