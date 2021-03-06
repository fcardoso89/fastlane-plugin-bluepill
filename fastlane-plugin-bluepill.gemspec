# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/bluepill/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-bluepill'
  spec.version       = Fastlane::Bluepill::VERSION
  spec.author        = 'tbrand'
  spec.email         = 'taichiro0709@gmail.com'

  spec.summary       = 'Fastlane plugin to use bluepill in fastlane'
  spec.homepage      = "https://github.com/tbrand/fastlane-plugin-bluepill"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*", "bin/*"] + %w[README.md LICENSE]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib', 'bin']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.20.0'
end
