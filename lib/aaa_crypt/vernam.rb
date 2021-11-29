module AaaCrypt
  module Vernam

    def self.encrypt(word, code)
      encoded_word = ''
      index = 0
      word.split('').map do |s|
        encoded_word += (s.ord ^ code[index].ord).chr
        index += 1
      end
      encoded_word
    end

    def self.decrypt(encoded_word, code)
      decoded_word = ''
      index = 0
      encoded_word.split('').map do |s|
        decoded_word += (s.ord ^ code[index].ord).chr
        index += 1
      end
    end
  end
end
