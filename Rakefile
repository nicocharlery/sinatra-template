require 'rspec/core/rake_task'

task :default => :help

desc "Help"
task :help do
  puts "Here is what you can do from now: "
  puts " rake spec - Run specs and calculate coverage"
  puts " rake server - Run a server (default port: 9292)"
end

desc "Run specs"
task :spec do
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = './spec/**/*_spec.rb'
  end
end

desc "Run Server"
task :server do
  system 'rackup config.ru'
end
