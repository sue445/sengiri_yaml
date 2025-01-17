# SengiriYaml

[![Gem Version](https://badge.fury.io/rb/sengiri_yaml.svg)](http://badge.fury.io/rb/sengiri_yaml)
[![test](https://github.com/sue445/sengiri_yaml/actions/workflows/test.yml/badge.svg)](https://github.com/sue445/sengiri_yaml/actions/workflows/test.yml)
[![Code Climate](https://codeclimate.com/github/sue445/sengiri_yaml/badges/gpa.svg)](https://codeclimate.com/github/sue445/sengiri_yaml)
[![Coverage Status](https://img.shields.io/coveralls/sue445/sengiri_yaml.svg)](https://coveralls.io/r/sue445/sengiri_yaml)

divide yaml file

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sengiri_yaml'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sengiri_yaml

## Usage

### divide yaml
```bash
$ cat "/path/to/fat.yml"
- data1: data1
  value: 1
- data2: data2
  value: 2

$ sengiri_yaml "/path/to/fat.yml" "/path/to/fat_dir"

$ ls "/path/to/fat_dir"
data1.yml data2.yml

$ cat data1.yml
---
- data1: data1
  value: 1

$ cat data2.yml
---
- data2: data2
  value: 2
```

### load divided yaml
```ruby
merged_data = SengiriYaml.load_dir("/path/to/fat_dir")
# => [{"data1" => "data1", "value" => 1}, {"data2" => "data2", "value" => 2}]
```

## Contributing

1. Fork it ( https://github.com/sue445/sengiri_yaml/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
