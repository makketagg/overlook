require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

load './lib/tasks/proto.rake'
load './lib/tasks/spec.rake'

RSpec::Core::RakeTask.new(:spec)

task default: 'spec:fast'
