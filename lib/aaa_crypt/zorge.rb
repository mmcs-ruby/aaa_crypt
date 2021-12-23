module AaaCrypt
  module  Zorge
    def self.encrypt(text)
      matrix = [['0','1','2','3','4','5','6','7','8','9'],
                ['S','I','O','E','R','A','T','N'],
                ['C','X','U','D','J','P','Z','B','K','Q'],
                ['.','W','F','L','/','G','M','Y','H','V']]
      encrypted_text = ''

      text.upcase.split('').map do |s|
        matrix.each_with_index do |row, num1|
          row.each_with_index do |cha, num2|
            if s==cha
              if num1==0
                encrypted_text+=num2.to_s+num2.to_s
                else if num1==1
                       encrypted_text+=num2.to_s
                     else
                       encrypted_text+=(num1+6).to_s+num2.to_s
                     end
              end
            end
          end
        end
      end
      encrypted_text
    end


     def self.decrypt(text)
      matrix2 = [['0','1','2','3','4','5','6','7','8','9'],
                ['S','I','O','E','R','A','T','N'],
                ['C','X','U','D','J','P','Z','B','K','Q'],
                ['.','W','F','L','/','G','M','Y','H','V']]
      decrypted_text = ''
      pchar = -2
      number_flag=0
      text+='0'
      text.upcase.split('').map do |s|
        if (pchar==9)&&(s.to_i==4)
             if (number_flag==1)
            number_flag=0
          else
            number_flag=1
             end
        end

        if (pchar==-2)
          pchar = s.to_i
        else
          if (pchar==-1)
            pchar = s.to_i
          else
            if (pchar==s.to_i)&&(number_flag==1)
              decrypted_text+=s
              pchar= -1
              else
            if (pchar<8)
              if (number_flag==0)
              decrypted_text+=matrix2[1][pchar]
              pchar=s.to_i
              end
            else
              decrypted_text+=matrix2[pchar-6][s.to_i]
              pchar = -1
            end
            end
            end
        end
      end
      decrypted_text
    end
  end
end
