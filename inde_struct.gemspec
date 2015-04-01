# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "inde_struct"
  s.version = "1.0.3.20150401130831"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Step1Profit"]
  s.date = "2015-04-01"
  s.description = "Ruby global Constant configuration variables with indifferent access. In other words, the same configuration value with case insensitive accessor."
  s.email = ["sales@step1profit.com"]
  s.executables = ["inde_struct"]
  s.extra_rdoc_files = ["Manifest.txt", "README.md", "History.txt"]
  s.files = [".travis.yml", "Gemfile", "History.txt", "LICENSE", "Manifest.txt", "README.md", "Rakefile", "bin/inde_struct", "inde_struct.gemspec", "lib/inde_struct.rb", "lib/inde_struct/parser.rb", "lib/inde_struct/parser/hash_any_case.rb", "lib/inde_struct/parser/open_struct_any_case.rb", "lib/inde_struct/reader.rb", "lib/inde_struct/version.rb", "test/files/config.yml", "test/files/empty.yml", "test/test_inde_struct.rb", ".gemtest"]
  s.homepage = "https://github.com/step1profit/inde_struct"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--title", "IndeStruct", "--markup", "markdown", "--quiet"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "1.8.23"
  s.summary = "Ruby global Constant configuration variables with indifferent access. In other words, the same configuration value with case insensitive accessor."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe-yard>, [">= 0.1.2"])
      s.add_development_dependency(%q<hoe-bundler>, [">= 1.1"])
      s.add_development_dependency(%q<hoe-gemspec>, [">= 1.0"])
      s.add_development_dependency(%q<hoe-git>, [">= 1.4"])
      s.add_development_dependency(%q<minitest>, ["~> 2.2.2"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<redcarpet>, ["~> 3.2"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, [">= 0.4"])
      s.add_development_dependency(%q<hoe>, ["~> 3.13"])
    else
      s.add_dependency(%q<hoe-yard>, [">= 0.1.2"])
      s.add_dependency(%q<hoe-bundler>, [">= 1.1"])
      s.add_dependency(%q<hoe-gemspec>, [">= 1.0"])
      s.add_dependency(%q<hoe-git>, [">= 1.4"])
      s.add_dependency(%q<minitest>, ["~> 2.2.2"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<redcarpet>, ["~> 3.2"])
      s.add_dependency(%q<codeclimate-test-reporter>, [">= 0.4"])
      s.add_dependency(%q<hoe>, ["~> 3.13"])
    end
  else
    s.add_dependency(%q<hoe-yard>, [">= 0.1.2"])
    s.add_dependency(%q<hoe-bundler>, [">= 1.1"])
    s.add_dependency(%q<hoe-gemspec>, [">= 1.0"])
    s.add_dependency(%q<hoe-git>, [">= 1.4"])
    s.add_dependency(%q<minitest>, ["~> 2.2.2"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<redcarpet>, ["~> 3.2"])
    s.add_dependency(%q<codeclimate-test-reporter>, [">= 0.4"])
    s.add_dependency(%q<hoe>, ["~> 3.13"])
  end
end
