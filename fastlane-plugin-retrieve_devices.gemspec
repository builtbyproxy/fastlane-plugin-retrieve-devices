lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/retrieve_devices/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-retrieve_devices'
  spec.version       = Fastlane::RetrieveDevices::VERSION
  spec.author        = 'Lachlan Young, BuiltByProxy'
  spec.email         = 'lachlan_young@hotmail.com'

  spec.summary       = 'retrieve all devices registered to your apple certrificate'
  spec.homepage      = "https://github.com/builtbyproxy/fastlane-plugin-retrieve-devices"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.5'

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency('bundler')
  spec.add_development_dependency('fastlane', '>= 2.187.0')
  spec.add_development_dependency('pry')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec_junit_formatter')
  spec.add_development_dependency('rubocop', '1.12.1')
  spec.add_development_dependency('rubocop-performance')
  spec.add_development_dependency('rubocop-require_tools')
  spec.add_development_dependency('simplecov')
end
