module Casetabs
  class HashWithMethods
    def metaclass
      class << self; self; end
    end

    def initialize(h)
      hash = h
      hash.each do |key, value| self.metaclass.send :define_method, key.to_s do
          value
        end
      end
    end


    private
    attr_reader :hash
  end
end
