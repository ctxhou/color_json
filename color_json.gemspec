# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'color_json/version'

Gem::Specification.new do |spec|
  spec.name          = "color_json"
  spec.version       = ColorJson::VERSION
  spec.authors       = ["ctxhou"]
  spec.email         = ["vjack070707@gmail.com"]
  spec.summary       = %q{Output the color json file.}
  spec.description   = %q{Easy way to show your sass/scss/less color list.}
  spec.homepage      = "https://github.com/ctxhou/color_json"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.executables = ["color_json"]


  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency 'thor', '~> 0.18'
end
