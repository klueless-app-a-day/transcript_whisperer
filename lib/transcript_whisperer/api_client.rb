# frozen_string_literal: true

module TranscriptWhisperer
  # A simple wrapper around the OpenAI API client
  class APIClient
    def initialize
      @client = OpenAI::Client.new
    end

    def transcribe_audio(file_path)
      audio_data = File.binread(file_path)

      response = @client.transcribe(
        parameters: {
          model: 'whisper-1',
          file: StringIO.new(audio_data)
        }
      )

      response.parsed_response['text']
      File.binread(file_path)
    end
  end
end
