# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "SystemTimer"
  s.version = "1.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philippe Hanrigou", "David Vollbracht"]
  s.autorequire = "system_timer"
  s.date = "2011-03-19"
  s.extensions = ["ext/system_timer/extconf.rb"]
  s.extra_rdoc_files = ["README"]
  s.files = ["README", "ext/system_timer/extconf.rb"]
  s.rdoc_options = ["--title", "SystemTimer", "--main", "README", "--line-numbers"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "systemtimer"
  s.rubygems_version = "1.8.24"
  s.summary = "Set a Timeout based on signals, which are more reliable than Timeout. Timeout is based on green threads."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
