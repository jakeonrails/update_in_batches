# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'update_in_batches/version'

Gem::Specification.new do |spec|
  spec.name          = "update_in_batches"
  spec.version       = UpdateInBatches::VERSION
  spec.authors       = ["Jake Moffatt"]
  spec.email         = ["jakeonrails@gmail.com"]
  spec.summary       = %q{Easily update activerecord models in batches}
  spec.description   = %q{Same as update_all, but uses find_in_batches}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activerecord'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
