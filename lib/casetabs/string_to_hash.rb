module Casetabs
  class StringToHash
    def initialize(string)
      @string = string
    end

    def call
      h = {}
      return h if string.nil? || string.empty?
    end

    def keys
      string.scan(/\s\w+:/)
    end

    private
    attr_reader :string
  end
end
