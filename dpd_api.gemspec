# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dpd_api/version'

Gem::Specification.new do |spec|
  spec.name          = "dpd_api"
  spec.version       = DpdApi::VERSION
  spec.authors       = ["Ponomarev Nikolay"]
  spec.email         = ["itsnikolay@gmail.com"]
  spec.summary       = %q{Ruby API for Dpd delivery service}
  spec.description   = %q{Ruby API for Dpd delivery service}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'savon', "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end