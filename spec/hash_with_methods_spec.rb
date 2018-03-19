require "spec_helper"

RSpec.describe Casetabs::HashWithMethods do
  it 'should return the value of a key as a method call' do
    h = {"this" => [1,2,3,4,5,6], "that" => ['here', 'there', 'everywhere'], :other => 100}

    expect(Casetabs::HashWithMethods.new(h).this).to eq([1,2,3,4,5,6])
    expect(Casetabs::HashWithMethods.new(h).other).to eq(100)
  end
end

