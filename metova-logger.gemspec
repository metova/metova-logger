# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metova/logger/version'

Gem::Specification.new do |spec|
  spec.name          = 'metova-logger'
  spec.version       = Metova::Logger::VERSION
  spec.authors       = ['Logan Serman']
  spec.email         = ['logan.serman@metova.com']
  spec.summary       = 'Configure Rails log format for use with Logstash/Kibana'
  spec.description   = spec.summary
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '~> 4'
  spec.add_dependency 'lograge', '~> 0.3'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
