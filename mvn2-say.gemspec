# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#noinspection RubyResolve
require 'mvn2-say/version'

Gem::Specification.new do |spec|
  spec.name        = 'mvn2-say'
  spec.version     = Mvn2Say::VERSION
  spec.authors     = ['Eric Henderson']
  spec.email       = ['henderea@gmail.com']
  spec.summary     = %q{Mac 'say' command plugin for mvn2}
  spec.description = %q{Use the Mac 'say' command to say the result of the build when it finishes.}
  spec.homepage    = 'https://github.com/henderea/mvn2-say'
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'everyday-plugins', '~> 1.2'
end
