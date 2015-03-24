# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "inde_struct"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Step1Profit"]
  s.date = "2015-03-24"
  s.description = "Ruby global Constant configuration variables with indifferent access. In other words, the same configuration value with non-case-sensitive accessor."
  s.email = ["sales@step1profit.com"]
  s.homepage = "https://github.com/step1profit/inde_struct"
  # s.executables = ["inde_struct"]
  s.files = ["History.txt", "LICENSE", "Manifest.txt", "README.md", "Rakefile", "bin/inde_struct", "lib/inde_struct.rb", "lib/inde_struct/parser.rb", "lib/inde_struct/parser/hash_any_case.rb", "lib/inde_struct/parser/open_struct_any_case.rb", "lib/inde_struct/reader.rb", "lib/inde_struct/version.rb", "test/files/config.yml", "test/files/empty.yml", "test/test_inde_struct.rb"]
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Ruby global Constant configuration variables with indifferent access. In other words, the same configuration value with non-case-sensitive accessor."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe-yard>, [">= 0.1.2"])
      s.add_development_dependency(%q<hoe>, ["~> 3.13"])
    else
      s.add_dependency(%q<hoe-yard>, [">= 0.1.2"])
      s.add_dependency(%q<hoe>, ["~> 3.13"])
    end
  else
    s.add_dependency(%q<hoe-yard>, [">= 0.1.2"])
    s.add_dependency(%q<hoe>, ["~> 3.13"])
  end
end
