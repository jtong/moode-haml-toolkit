# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moode-haml-toolkit/version'

Gem::Specification.new do |gem|
  gem.name          = "moode-haml-toolkit"
  gem.version       = Moode::Haml::Toolkit::VERSION
  gem.authors       = ["jtong, xudejian"]
  gem.email         = ["tj19832@gmail.com"]
  gem.description   = %q{moode mobile development toolkit}
  gem.summary       = %q{moode mobile development toolkit}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
