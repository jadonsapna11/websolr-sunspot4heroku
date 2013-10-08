# -*- encoding: utf-8 -*-
VERSION = File.read(File.join(File.dirname(__FILE__), "VERSION"))

Gem::Specification.new do |s|
  s.name = %q{websolr-sunspot4heroku}
  s.version = VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sapna Jadon"]
  s.date = %q{2013-10-08}
  s.description = %q{websolr with geocoding for heroku}
  s.email = %q{jadon.sapna11@gmail.com}
  s.files = [
    ".document",
     ".gitignore",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/websolr-sunspot4heroku.rb",
     "websolr-sunspot4heroku.gemspec"
  ]
  
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{websolr with geocoding for heroku}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sunspot_rails>)
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<sunspot_rails>)
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<sunspot_rails>)
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

