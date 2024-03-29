# -*- encoding: utf-8 -*-
# stub: json 2.3.1 java lib

Gem::Specification.new do |s|
  s.name = "json".freeze
  s.version = "2.3.1"
  s.platform = "java".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Luz".freeze]
  s.date = "2020-06-30"
  s.description = "A JSON implementation as a JRuby extension.".freeze
  s.email = "dev+ruby@mernen.com".freeze
  s.homepage = "http://flori.github.com/json".freeze
  s.licenses = ["Ruby".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "JSON implementation for JRuby".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 2.0", "< 4.0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 2.0", "< 4.0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 2.0", "< 4.0"])
  end
end
