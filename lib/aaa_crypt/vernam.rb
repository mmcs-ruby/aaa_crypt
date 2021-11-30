module AaaCrypt
  module Vernam

    ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!?:;.,(){}[]"
    def self.encrypt(word, key)
      raise Error if word.length > key.length

      encrypted_word = ''
      index = 0
      word.upcase.split('').map do |s|
        encrypted_word += ALPHABET[(ALPHABET.index(s) + ALPHABET.index(key[index].upcase)) % 48]
        index += 1
      end
      encrypted_word
    end

    def self.decrypt(encrypted_word, code)
      raise Error if encrypted_word.length > code.length

      decrypted_word = ''
      index = 0
      encrypted_word.upcase.split('').map do |s|
        decrypted_word += ALPHABET[(ALPHABET.index(s) - ALPHABET.index(code[index].upcase)) % 48]
        index += 1
      end
      decrypted_word
    end
  end
end
