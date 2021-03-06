# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'organize/version'

Gem::Specification.new do |s|
  s.name        = 'organize'
  s.version     = Organize::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Alexander Kern']
  s.email       = ['alex@kernul.com']
  s.homepage    = 'http://github.com/CapnKernul/organize'
  s.summary     = 'Organize your Mac filesystem.'
  s.description = 'Creates directories and links to manage your Mac consistently.'
  
  s.rubyforge_project = 'organize'
  
  s.add_dependency 'optitron', '~> 0.2'
  
  s.add_development_dependency 'bundler', '~> 1.0'
  s.add_development_dependency 'rspec',   '~> 2.4'
  s.add_development_dependency 'fakefs',  '~> 0.2'
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end