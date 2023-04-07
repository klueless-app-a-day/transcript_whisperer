# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TranscriptWhisperer::APIClient do
  # let(:api_key) { nil }
  let(:file_path) { 'spec/fixtures/sample.mp3' }
  let(:client) { described_class.new }

  describe '#transcribe_audio' do
    it 'returns the transcription for the given audio file' do
      transcription = client.transcribe_audio(file_path)

      # Add your expectations here, for example:
      expect(transcription).not_to be_empty
    end
  end
end
