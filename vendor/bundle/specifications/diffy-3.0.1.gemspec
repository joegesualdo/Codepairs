# -*- encoding: utf-8 -*-
# stub: diffy 3.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "diffy"
  s.version = "3.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sam Goldstein"]
  s.date = "2013-07-16"
  s.description = "Convenient diffing in ruby"
  s.email = "sgrock@gmail.com"
  s.extra_rdoc_files = ["LICENSE", "README.md"]
  s.files = ["LICENSE", "README.md"]
  s.homepage = "http://github.com/samg/diffy/tree/master"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.rubygems_version = "2.2.0"
  s.summary = "A convenient way to diff string in ruby"

  s.installed_by_version = "2.2.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.0"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.0"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
  end
end