namespace :spec do
  desc 'Run all the tests'
  task :all do
    exec("rspec .")
  end

  desc 'Run only the fast tests'
  task :fast do
    exec("rspec . --tag ~slow")
  end
end
