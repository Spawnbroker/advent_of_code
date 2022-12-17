# frozen_string_literal: true

require 'bundler/setup'
require 'reek/rake/task'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

Reek::Rake::Task.new do |t|
  t.fail_on_error = false
end
RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new

task code_quality: %i[reek rubocop]

task default: %i[code_quality spec]
