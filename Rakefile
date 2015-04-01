# -*- ruby -*-

require "rubygems"

gem 'hoe'
require "hoe"
Hoe.plugin :git
Hoe.plugin :gemspec
Hoe.plugin :bundler
Hoe.plugin :yard

require './lib/inde_struct/version.rb'

Hoe.spec "inde_struct" do
  developer "Step1Profit", "sales@step1profit.com"

  license "MIT"

  self.version      = IndeStruct::VERSION
  self.description  = "Ruby global Constant configuration variables with indifferent access. In other words, the same configuration value with case insensitive accessor."
  self.summary      = description
  self.urls         = ['https://github.com/step1profit/inde_struct']
  self.readme_file  = 'README.md'
  self.history_file = 'HISTORY.md'
  self.testlib      = :minitest
  self.yard_title   = 'IndeStruct'
  self.yard_markup  = 'markdown'

  self.extra_dev_deps += [
    ["hoe-bundler",               ">= 1.1"],
    ["hoe-gemspec",               ">= 1.0"],
    ["hoe-git",                   ">= 1.4"],
    ["minitest",                  "~> 2.2.2"],
    ["yard",                      "~> 0.8"],
    ["redcarpet",                 "~> 3.2"], # yard/markdown
    ["codeclimate-test-reporter", ">= 0.4"],
  ]

  self.clean_globs += [
    '.yardoc',
  ]

  self.spec_extras = {
    :required_ruby_version => '>= 1.9.2'
  }
end

# vim: syntax=ruby
