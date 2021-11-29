module AaaCrypt
  module Vernam

    ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!?:;.,(){}[]"
    def self.encrypt(word, code)
      encoded_word = ''
      index = 0
      word.split('').map do |s|
        encoded_word += ALPHABET[ALPHABET.index(s) ^ ALPHABET.index(code[index])]
        index += 1
      end
      encoded_word
    end

    def self.decrypt(encoded_word, code)
      decoded_word = ''
      index = 0
      encoded_word.split('').map do |s|
        decoded_word += ALPHABET[ALPHABET.index(s) ^ ALPHABET.index(code[index])]
        index += 1
      end
      decoded_word
    end
  end
end
