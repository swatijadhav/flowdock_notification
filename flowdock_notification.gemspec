# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flowdock_notification/version'

Gem::Specification.new do |spec|
  spec.name          = "flowdock_notification"
  spec.version       = FlowdockNotification::VERSION
  spec.authors       = ["swatijadhav"]
  spec.email         = ["swati.jadhav@kiprosh.com"]
  spec.summary       = %q{Send notification to flowdock group}
  spec.description   = %q{Send notification to flowdock group}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"
end
