module Casetabs
  class StringToHash
    def initialize(string)
      @string = string
    end

    def call
      h = {}
      return h if string.nil? || string.empty?
    end

    private
    attr_reader :string
  end
end
