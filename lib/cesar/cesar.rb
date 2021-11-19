class Cesar

  ALPHABET_EU_UP = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  ALPHABET_EU_DOWN = ALPHABET_EU_UP.downcase
  ALPHABET_RU_UP = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ'
  ALPHABET_RU_DOWN = ALPHABET_RU_UP.downcase

  ALPHABETS = [ALPHABET_EU_UP, ALPHABET_EU_DOWN, ALPHABET_RU_UP, ALPHABET_RU_DOWN]

  def self.encrypt(word, step)
    res = ""
    word.split('').map do |s|
      alphabet = ALPHABETS.find{|a| a.include? s}
      res += alphabet ? encode_letter(s, alphabet, step) : s
    end
    res
  end

  def self.encode_letter(letter, alphabet, step)
    alphabet[(alphabet.index(letter) + step) % alphabet.length]
  end
  
  def self.decrypt(word, step)
    encrypt(word, step * -1)
  end

end
