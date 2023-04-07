# frozen_string_literal: true

require 'openai'
require 'stringio'

OpenAI.configure do |config|
  config.access_token = ENV.fetch('TRANSCRIPT_WHISPER_OPENAI_ACCESS_TOKEN', ENV.fetch('OPENAI_ACCESS_TOKEN', nil))
end

require_relative 'transcript_whisperer/version'
require_relative 'transcript_whisperer/api_client'

module TranscriptWhisperer
  class Error < StandardError; end
  # Your code goes here...
end
