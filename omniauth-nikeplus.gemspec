# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-nikeplus/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Benny Wong"]
  gem.email         = ["benny@gofitcause.com"]
  gem.description   = %q{OmniAuth 2.0 strategy for Nike Plus.}
  gem.summary       = %q{OmniAuth 2.0 strategy for Nike Plus.}
  gem.homepage      = "https://github.com/bennycwong/omniauth-nikeplus"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-nikeplus"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Nikeplus::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'

  gem.add_dependency 'multi_json', '~> 1.10.1'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
