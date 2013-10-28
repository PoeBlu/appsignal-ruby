# -*- encoding: utf-8 -*-
require File.expand_path('../lib/appsignal/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = [
    'Robert Beekman',
    'Steven Weller',
    'Thijs Cadier',
    'Ron Cadier',
    'Jacob Vosmaer'
  ]
  gem.email         = ['contact@appsignal.com']
  gem.description   = 'The official appsignal.com gem'
  gem.summary       = 'Logs performance and exception data from your app to'\
                      'appsignal.com'
  gem.homepage      = 'http://github.com/appsignal/appsignal'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'appsignal'
  gem.require_paths = ['lib']
  gem.version       = Appsignal::VERSION

  gem.add_dependency 'rails', '>= 3.0'
  gem.add_dependency 'rake'
  gem.add_dependency 'json'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'capistrano', '< 3.0'
  gem.add_development_dependency 'generator_spec'
  gem.add_development_dependency 'pry'
end
