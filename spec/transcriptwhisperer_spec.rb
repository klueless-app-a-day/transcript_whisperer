# frozen_string_literal: true

RSpec.describe TranscriptWhisperer do
  it 'has a version number' do
    expect(TranscriptWhisperer::VERSION).not_to be_nil
  end

  it 'has a standard error' do
    expect { raise TranscriptWhisperer::Error, 'some message' }
      .to raise_error('some message')
  end
end
