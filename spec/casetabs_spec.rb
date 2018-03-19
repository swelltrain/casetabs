require "spec_helper"

RSpec.describe Casetabs do
  it "has a version number" do
    expect(Casetabs::VERSION).not_to be nil
  end
end

RSpec.describe Casetabs::StringToHash, '#call' do
  context 'when string is nil' do
    it 'returns an empty hash' do
      expect(Casetabs::StringToHash.new(nil).call).to eq({})
    end
  end

  context 'when string is empty' do
    it 'returns an empty hash' do
      expect(Casetabs::StringToHash.new('').call).to eq({})
    end
  end
end

RSpec.describe Casetabs::StringToHash, '#keys' do
  it 'returns an array of keys' do
    expect(Casetabs::StringToHash.new("{ key:[ [value_1, value_2],[value_3, value4] ], 5:10:00AM ] }").keys).to eq([" key:", " 5:"])
  end
end
