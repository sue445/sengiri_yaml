source 'https://rubygems.org'

# Specify your gem's dependencies in sengiri_yaml.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.7.0")
  # term-ansicolor 1.9.0+ doesn't work on Ruby < 2.7
  gem "term-ansicolor", "< 1.9.0"
end
