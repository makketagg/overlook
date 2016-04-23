# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'overlook/version'

Gem::Specification.new do |spec|
  spec.name          = 'overlook'
  spec.version       = Overlook::VERSION
  spec.authors       = ['Taylor Finnell']
  spec.email         = ['tmfinnell@gmail.com']

  spec.summary       = %q{Ruby access to CS:GO demo files.}
  spec.description   = %q{Ruby access to CS:GO demo files.}
  spec.homepage      = 'http://github.com/taylorfinnell/overlook'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # For protobuf
  spec.add_dependency 'beefcake'

  # To handle converting steam ids between their various formats
  spec.add_dependency 'steamidlib'

  # For a simple pub\sub implementation
  spec.add_dependency 'wisper'

  spec.add_development_dependency 'bundler',  '~> 1.10'
  spec.add_development_dependency 'rake',     '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'rubycritic'
end
