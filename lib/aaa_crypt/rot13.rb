module AaaCrypt
  module Rot13

    ALF = "abcdefjhijklmnopqrstuvwxyz!?:;.,(){}[]"
    NUM = "0123456789"

    def self.encrypt_letter(sym)
      if NUM.include?  sym
        return NUM[(NUM.index(sym)+13) % 10]
      end
      if ALF.include? sym.downcase
        return ALF[(ALF.index(sym.downcase)+13) % ALF.size]
      end
      sym == " " ?  " " :  "#"
    end

    def self.decrypt_letter (crypt)
      if NUM.include?  crypt
        return NUM[(NUM.index(crypt)-13) % 10]
      end
      if ALF.include? crypt
        return ALF[(ALF.index(crypt)-13) % ALF.size]
      end
      if crypt == " "
        return " "
      else
        "#"
      end
    end

    def self.encrypt(word)
      word.split('').map {|x| encrypt_letter(x)}.join('')
    end

    def self.decrypt(crypt)
      crypt.split('').map {|x| decrypt_letter(x)}.join('')
    end
  end
end