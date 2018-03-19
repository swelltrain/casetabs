require "casetabs/version"
require "casetabs/string_to_hash"
require "casetabs/hash_with_methods"

module Casetabs
  def self.zero_count(n)
    # Time Complexity: Our worst case string would be 10101...repeated
    # This should have a worst case run time of O(n log n)
    # Assuming Regex in ruby is optimized and  negligible

    # Space Complexity: our worst case string would be 100...001, resulting in matched being a complete copy of the string
    # O(n**2)
    # Assuming string[] syntax is working on the same string in memory and not creating a new one

    max = 0
    return max if n.nil?
    string = n.to_s(2)
    start_index = 0

    while match_data = string[start_index..-1].match(/10+1/) do
      matched = match_data[0]
      start_index += string[start_index..-1].index(matched) + matched.length - 1
      number_of_zeroes = matched.length - 2
      max = number_of_zeroes > max ? number_of_zeroes : max
    end

    max
  end
end
