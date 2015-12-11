# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongo/helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "mongo-helpers"
  spec.version       = Mongo::Helpers::VERSION
  spec.authors       = ["Kuldeep Aggarwal"]
  spec.email         = ["kd.engineer@yahoo.co.in"]

  spec.summary       = %q{It is an utility gem to support Mongo}
  spec.description   = %q{It adds helper methods in Mongo.}
  spec.homepage      = "https://github.com/kuldeepaggarwal/mongo-helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'mongo', '>= 2.1.2', '<= 2.2.0'

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4.0"
end
