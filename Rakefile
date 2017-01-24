require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

load './lib/tasks/spec.rake'

RSpec::Core::RakeTask.new(:spec)

task default: 'spec:fast'

require 'rake/extensiontask'
spec = Gem::Specification.load('overlook-csgo.gemspec')
Rake::ExtensionTask.new('fast_byte_reader', spec)
