# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)
require "mocha/version"

Gem::Specification.new do |s|
  s.name = "mocha"
  s.version = Mocha::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Mead"]
  s.description = "Mocking and stubbing library with JMock/SchMock syntax, which allows mocking and stubbing of methods on real (non-mock) classes."
  s.email = "mocha-developer@googlegroups.com"
  s.extra_rdoc_files = ["README.rdoc", "COPYING.rdoc"]

  s.files = `git ls-files`.split("\n") - ["TODO", ".travis.yml", ".gitignore"]

  s.homepage = "http://floehopper.github.com/mocha/"
  s.rdoc_options = ["--title", "Mocha", "--main", "README.rdoc", "--line-numbers"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "mocha"
  s.summary = "Mocking and stubbing library"

  s.add_dependency("metaclass", "~> 0.0.1")
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency("rake", ">= 0")
      s.add_development_dependency("introspection", "~> 0.0.1")
      s.add_development_dependency("yard")
    else
      s.add_dependency("rake", ">= 0")
      s.add_dependency("introspection", "~> 0.0.1")
      s.add_dependency("yard")
    end
  else
    s.add_dependency("rake", ">= 0")
    s.add_dependency("introspection", "~> 0.0.1")
    s.add_dependency("yard")
  end
end
