# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'format_event/version'

Gem::Specification.new do |spec|
  spec.name          = "format_event"
  spec.version       = FormatEvent::VERSION
  spec.authors       = ["Kevin Farst"]
  spec.email         = ["farst.6@osu.edu"]
  spec.description   = %q{Event date and time formatters for the Liquid templating language}
  spec.summary       = %q{Event date and time formatters for the Liquid templating language}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
