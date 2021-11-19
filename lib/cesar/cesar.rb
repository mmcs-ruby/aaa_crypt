class Cesar

  def self.encrypt(word, step)
    alfavit_EU_up = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    alfavit_EU_down = alfavit_EU_up.downcase
    alfavit_RU_up = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ'
    alfavit_RU_down = alfavit_RU_up.downcase

    res = ""

    word.split('').map do |s|
      if(alfavit_EU_down.include?(s))
        res += alfavit_EU_down[(alfavit_EU_down.index(s) + step) % alfavit_EU_down.length]
      elsif (alfavit_EU_up.include?(s))
        res += alfavit_EU_up[(alfavit_EU_up.index(s) + step) % alfavit_EU_up.length]
      elsif (alfavit_RU_down.include?(s))
        res += alfavit_RU_down[(alfavit_RU_down.index(s) + step) % alfavit_RU_down.length]
      elsif (alfavit_RU_up.include?(s))
        res += alfavit_RU_up[(alfavit_RU_up.index(s) + step) % alfavit_RU_up.length]
      else
        res += s
      end
    end

    res
  end




  def self.decrypt(word, step)
    encrypt(word, step * -1)
  end

end
