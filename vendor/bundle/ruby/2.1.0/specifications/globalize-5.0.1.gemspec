# -*- encoding: utf-8 -*-
# stub: globalize 5.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "globalize"
  s.version = "5.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sven Fuchs", "Joshua Harvey", "Clemens Kofler", "John-Paul Bader", "Tomasz Stachewicz", "Philip Arndt", "Chris Salzberg"]
  s.date = "2015-02-15"
  s.description = "Rails I18n de-facto standard library for ActiveRecord model/data translation."
  s.email = "nobody@globalize-rails.org"
  s.homepage = "http://github.com/globalize/globalize"
  s.licenses = ["MIT"]
  s.rubyforge_project = "[none]"
  s.rubygems_version = "2.2.2"
  s.summary = "Rails I18n de-facto standard library for ActiveRecord model/data translation"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["< 4.3", ">= 4.2.0"])
      s.add_runtime_dependency(%q<activemodel>, ["< 4.3", ">= 4.2.0"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 1.4.0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<minitest-reporters>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, ["< 4.3", ">= 4.2.0"])
      s.add_dependency(%q<activemodel>, ["< 4.3", ">= 4.2.0"])
      s.add_dependency(%q<database_cleaner>, ["~> 1.4.0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<minitest-reporters>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, ["< 4.3", ">= 4.2.0"])
    s.add_dependency(%q<activemodel>, ["< 4.3", ">= 4.2.0"])
    s.add_dependency(%q<database_cleaner>, ["~> 1.4.0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<minitest-reporters>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
