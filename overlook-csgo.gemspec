# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'overlook/version'

Gem::Specification.new do |spec|
  spec.name          = 'overlook-csgo'
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
  spec.add_dependency 'beefcake', '= 1.2.0'

  # To handle converting steam ids between their various formats
  spec.add_dependency 'steamidlib', '= 1.0.1'

  # For a simple pub\sub implementation
  spec.add_dependency 'wisper', '= 1.6.1'

  spec.add_development_dependency 'bundler',  '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'pry', '~> 0.10.4'
  spec.add_development_dependency 'yard', '~> 0.9.5'
  spec.add_development_dependency 'rubycritic', '~> 3.0'
end
