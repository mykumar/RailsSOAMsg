# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'soa_msg/version'

Gem::Specification.new do |spec|
  spec.name          = "soa_msg"
  spec.version       = SOAMSG::VERSION
  spec.authors       = ["smileofninja"]
  spec.email         = ["smileofninja@gmail.com"]

  spec.summary       = %q{Lightweight SOA multi-threaded pub-sub message dispatcher for self-contained service-oriented Ruby apps.}

  spec.description   = %q{Small, lightweight, easy to implement multi-threaded publish/subscribe style message dispatcher for quickly creating self-contained service-oriented Ruby apps.}
  spec.homepage      = "https://github.com/smileofninja/RailsSOAMsg"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
