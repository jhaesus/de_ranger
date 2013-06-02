# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'de_ranger/version'

Gem::Specification.new do |gem|
  gem.name          = "de_ranger"
  gem.version       = DeRanger::VERSION
  gem.authors       = ["Jahel"]
  gem.email         = ["rainersai@gmail.com"]
  gem.description   = "Using simple cover? testing on ranges to return suitable ranges for whatever"
  gem.summary       = "Gem to deal with subtracting ranges from ranges."
  gem.homepage      = "https://github.com/Jahel/de_ranger"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
