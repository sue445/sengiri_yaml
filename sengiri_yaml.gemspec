# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sengiri_yaml/version'

Gem::Specification.new do |spec|
  spec.name          = "sengiri_yaml"
  spec.version       = SengiriYaml::VERSION
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]
  spec.summary       = %q{divide yaml file}
  spec.description   = %q{divide yaml file}
  spec.homepage      = "https://github.com/sue445/sengiri_yaml"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.6"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"
  spec.metadata["documentation_uri"] = "https://sue445.github.io/sengiri_yaml/"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "coveralls_reborn"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-temp_dir"
  spec.add_development_dependency "term-ansicolor", "!= 1.11.1" # ref. https://github.com/flori/term-ansicolor/issues/41
  spec.add_development_dependency "yard"
end
