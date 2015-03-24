#IndeStruct

https://github.com/step1profit/inde_struct

##DESCRIPTION

Ruby global Constant configuration variables with indifferent access. In other words, the same configuration value with non-case-sensitive accessor.

##FEATURES

* Case-insensitive access to variables - access your way... instead of changing the original config file
* Accepts Hash or YAML-string
* Read YAML from filepath or File class

##SYNOPSIS

###Ruby env

Hash

```ruby
hash = {whatever: 'awesome'}
# create global constant
CONFIG = IndeStruct.ible(hash)
```

YAML-string

```ruby
yaml_string = "---\nwhatever: awesome\n"
CONFIG = IndeStruct.ible(yaml_string)
```

Filepath

```ruby
# some_dir/config.yml # => "---\nwhatever: awesome\n"
filepath = 'some_dir/config.yml'
CONFIG = IndeStruct.ible(filepath)
```

File

```ruby
# some_dir/config.yml # => "---\nwhatever: awesome\n"
file = File.open('test/files/config.yml')
CONFIG = IndeStruct.ible(file)
```

###Rails env

```ruby
# in your_rails_app/config/application.rb

require 'inde_struct' # if not required via Gemfile
# assuming existing your_rails_app/config/application.yml # => "---\nwhatever: awesome\n"
hash = YAML.load(File.read(File.expand_path('../application.yml', __FILE__)))
# using environment specific configs (optional)
hash.merge!(hash[Rails.env]||{})
# create global constant
CONFIG = IndeStruct.ible(hash)

#module YourRailsApp
#  class Application < Rails::Application
# [...]
```

### Result

Result is the same for both Ruby env and Rails env

```ruby
# wherever you want:
CONFIG.whaTeVer # => 'awesome'
CONFIG.wHAteveR # => 'awesome'
CONFIG.WHaTevER # => 'awesome'
CONFIG.whatEVEr # => 'awesome'
CONFIG.WHATevEr # => 'awesome'
CONFIG.WHateVeR # => 'awesome'
```

##REQUIREMENTS

* Ruby 1.9 or higher

##INSTALL

Command Line

```
$ gem install inde_struct
```

Gemfile

```ruby
gem 'inde_struct'
```

##LICENSE

(The MIT License)

Copyright (c) 2015 Step1Profit

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
