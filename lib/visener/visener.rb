class Visener

  def self.encrypt(input, key)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'

    input = input.downcase
    key= key.downcase

    res = ""
    key_index = 0

    input.split('').map do |s|
      if(alphabet.include?(s))
        c = (alphabet.index(s) + alphabet.index(key[key_index])) % alphabet.length
        res += alphabet[c]
        key_index += 1
      else
        res += s
      end

      key_index = 0 if key_index == key.length
    end

    res
  end


  def self.decrypt(input, key)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'

    input = input.downcase
    key= key.downcase

    res = ""
    key_index = 0

    input.split('').map do |s|
      if(alphabet.include?(s))
        c = (alphabet.index(s) + alphabet.length - alphabet.index(key[key_index])) % alphabet.length
        res += alphabet[c]
        key_index += 1
      else
        res += s
      end

      key_index = 0 if key_index == key.length
    end

    res
  end


end
