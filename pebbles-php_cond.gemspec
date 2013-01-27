# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pebbles/php_cond/version'

Gem::Specification.new do |gem|
  gem.name          = "pebbles-php_cond"
  gem.version       = Pebbles::PhpCond::VERSION
  gem.authors       = ["do-aki"]
  gem.email         = ["do.hiroaki@gmail.com"]
  gem.description   = %q{emulate PHP condition}
  gem.summary       = %q{emulate PHP condition}
  gem.homepage      = "https://github.com/do-aki/pebbles-php_cond"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rake'
end
