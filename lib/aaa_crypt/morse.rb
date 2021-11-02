CODES = {a:'._', b: '_...', " ": ' '}
CODES_INVERSE = CODES.invert

def self.encrypt_letter(letter)
  CODES.fetch letter.to_sym, "?"
end

def self.decrypt_letter (crypt)
  CODES_INVERSE.fetch crypt, "?"
end

def self.encrypt(word)
  word.split('').map {|x| encrypt_letter(x)}.join('')
end

def self.decrypt(crypt)
  crypt.split('').map {|x| decrypt_letter(x)}.join('')
end