module AaaCrypt
  class Morse

    CODES = {a: '•-', b: '-•••', " ": ' '}
    CODES_INVERSE = CODES.invert

    def self.encrypt_letter(letter)
      CODES.fetch letter.to_sym, "?"
    end

    def self.decrypt_letter(letter)
      CODES_INVERSE.fetch shifr, "?"
    end

    def self.encrypt(word)
      word.split('').map { |x| encrypt_letter(x)}.join('')
    end

    def self.decrypt(word)
      # "-•••   -•••".gsub('   ', ' \% ').split(' ').map{|x| x=='\%' ? ' ' : x}
      word.split(' ').map { |x| decrypt_letter(x)}.join('')
    end
  end
end
