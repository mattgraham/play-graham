# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mustache"
  s.version = "0.99.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Wanstrath", "Magnus Holm", "Pieter van de Bruggen"]
  s.date = "2011-05-26"
  s.description = "Inspired by ctemplate, Mustache is a framework-agnostic way to render\nlogic-free views.\n\nAs ctemplates says, \"It emphasizes separating logic from presentation:\nit is impossible to embed application logic in this template\nlanguage.\n\nThink of Mustache as a replacement for your views. Instead of views\nconsisting of ERB or HAML with random helpers and arbitrary logic,\nyour views are broken into two parts: a Ruby class and an HTML\ntemplate.\n"
  s.email = "chris@ozmm.org"
  s.executables = ["mustache"]
  s.files = ["bin/mustache"]
  s.homepage = "http://github.com/defunkt/mustache"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Mustache is a framework-agnostic way to render logic-free views."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
