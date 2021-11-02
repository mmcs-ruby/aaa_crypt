CODES = {a:'._', b: '_...', с: '_._.', d: '_..', e: '.', f:'.._.', g: '__.', h: '....', i: '..', l: '.___', k: '_._',
         l: '._..', o:'___', p: '.__.', q: '__._', r: '._.', s: '...', t: '_', u: '.._', v: '..._', w: '.__', x: '_.._',
         y: '_.__', " ": ' ', "1": '.____', "2": '..___', "3": '...__', "4": '...._', "5": '.....', "6": '_....',
         "7": '__...', "8": '___..', "9": '____.', "0": '_____' }
CODES_INVERSE = CODES.invert

def self.encrypt_letter(letter)
  CODES.fetch letter.to_sym, "?"
end

def self.decrypt_letter (crypt)
  CODES_INVERSE.fetch crypt, "?"
end

def self.encrypt(word)
  word.split('').map {|x| encrypt_letter(x)}.join(' ')
end

def self.decrypt(crypt)
  crypt.split(' ').map {|x| decrypt_letter(x)}.join('')
end