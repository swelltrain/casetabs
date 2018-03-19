require "spec_helper"

RSpec.describe Casetabs do
  it "has a version number" do
    expect(Casetabs::VERSION).not_to be nil
  end
end

RSpec.describe Casetabs, '.string_to_hash' do
  context 'when string is nil' do
    it 'returns an empty hash' do
      expect(Casetabs.string_to_hash(nil)).to eq({})
    end
  end

  context 'when string is empty' do
    it 'returns an empty hash' do
      expect(Casetabs.string_to_hash('')).to eq({})
    end
  end
end
