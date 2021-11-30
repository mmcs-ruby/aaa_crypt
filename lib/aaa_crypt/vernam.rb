module AaaCrypt
  module Vernam

    ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!?:;.,(){}[]"
    def self.encrypt(word, code)
      raise Error if word.length > code.length

      encoded_word = ''
      index = 0
      word.split('').map do |s|
        encoded_word += ALPHABET[(ALPHABET.index(s) + ALPHABET.index(code[index])) % 48]
        index += 1
      end
      encoded_word
    end

    def self.decrypt(encoded_word, code)
      raise Error if encoded_word.length > code.length

      decoded_word = ''
      index = 0
      encoded_word.split('').map do |s|
        decoded_word += ALPHABET[(ALPHABET.index(s) - ALPHABET.index(code[index])) % 48]
        index += 1
      end
      decoded_word
    end
  end
end
