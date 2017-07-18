# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peterson_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "peterson_view_tool"
  spec.version       = PetersonViewTool::VERSION
  spec.authors       = ["Amadeus Peterson"]
  spec.email         = ["amadeuspeterson@gmail.com"]

  spec.summary       = %q{Various vie specific methods for applications I use}
  spec.description   = %q{Provides generated HTML data for Rails applications}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
