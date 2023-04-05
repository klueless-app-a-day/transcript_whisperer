# frozen_string_literal: true

# source: https://stephenagrice.medium.com/making-a-command-line-ruby-gem-write-build-and-push-aec24c6c49eb

GEM_NAME = 'transcript_whisperer'

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'transcript_whisperer/version'

RSpec::Core::RakeTask.new(:spec)

require 'rake/extensiontask'

desc 'Compile all the extensions'
task build: :compile

Rake::ExtensionTask.new('transcript_whisperer') do |ext|
  ext.lib_dir = 'lib/transcript_whisperer'
end

desc 'Publish the gem to RubyGems.org'
task :publish do
  version = TranscriptWhisperer::VERSION
  system 'gem build'
  system "gem push #{GEM_NAME}-#{version}.gem"
end

desc 'Remove old *.gem files'
task :clean do
  system 'rm *.gem'
end

task default: %i[clobber compile spec]
