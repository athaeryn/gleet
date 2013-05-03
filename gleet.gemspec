# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gleet/version'

Gem::Specification.new do |spec|
  spec.name          = "gleet"
  spec.version       = Gleet::VERSION
  spec.authors       = ["Mike Anderson"]
  spec.email         = ["athaeryn@me.com"]
  spec.description   = "1337 c0mmi75."
  spec.summary       = "A silly little gem to translate your git commit SHAs to leet."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
