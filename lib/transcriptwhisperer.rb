# frozen_string_literal: true

require 'transcript_whisperer/version'

module TranscriptWhisperer
  # raise TranscriptWhisperer::Error, 'Sample message'
  Error = Class.new(StandardError)

  # Your code goes here...
end

if ENV.fetch('KLUE_DEBUG', 'false').downcase == 'true'
  namespace = 'TranscriptWhisperer::Version'
  file_path = $LOADED_FEATURES.find { |f| f.include?('transcript_whisperer/version') }
  version   = TranscriptWhisperer::VERSION.ljust(9)
  puts "#{namespace.ljust(35)} : #{version.ljust(9)} : #{file_path}"
end
