require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task default: :spec

begin
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new

  task default: [:rubocop, :spec]
rescue LoadError
end
