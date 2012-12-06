# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zhuna_cn_wrapper/version'

Gem::Specification.new do |gem|
  gem.name          = "zhuna_cn_wrapper"
  gem.version       = ZhunaCnWrapper::VERSION
  gem.authors       = ["Leon Guan"]
  gem.email         = ["leon.guan@gmail.com"]
  gem.description   = %q{A simple gem to wrap zhuna.cn API.}
  gem.summary       = %q{A simple gem to wrap zhuna.cn API, for used in my current project, won't put much effort on it, use it on your precaution.}
  gem.homepage      = "http://github.com/pzgz"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency "rest-client"
end
