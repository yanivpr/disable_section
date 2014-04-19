# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'disable_section/version'

Gem::Specification.new do |spec|
  spec.name          = "disable_section"
  spec.version       = DisableSection::VERSION
  spec.authors       = ["yaniv preiss"]
  spec.email         = ["yanivpr@gmail.com"]
  spec.summary       = %q{UI helper that disables an entire section with its inner html elements based on a given condition}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.1"
  spec.add_dependency "jquery-rails"

  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "bundler", "~> 1.4"
  spec.add_development_dependency "rake"
end
