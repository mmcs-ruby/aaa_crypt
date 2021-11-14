require 'securerandom'
class Alph
  @@letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  def self.letters
    @@letters
  end
end
class Vigenere
#generates random key, len-length of future key (includes only downcase latin letters)
def self.key_generate(len)
  #key= SecureRandom.hex(len/2)
  o = [('a'..'z')].map(&:to_a).flatten
  key = (0...len).map { o[rand(o.length)] }.join
  key
end
# These Vigenere encryption and decryption are based on Vigenere table that includes only downcase latin letters
#vigenere encryption
def self.vigenere_encrypt(str,key)
  alph=Alph.letters
  n = alph.length
  res=String.new()
  arr=str.chars
  arrk=key.chars
  arr.zip(arrk).each do |c,k| t=(alph.index(c)+alph.index(k))%n
  res+=alph[t]
  end
  res
end
#vigenere decryption
def self.vigenere_decrypt(str,key)
  alph=Alph.letters
  n = alph.length
  res=String.new()
  arr=str.chars
  arrk=key.chars
  arr.zip(arrk).each do |c,k| t=(alph.index(c)+n -alph.index(k))%n
  res+=alph[t]
  end
  res
end
end


