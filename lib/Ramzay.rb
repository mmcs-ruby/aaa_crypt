class Ramzay
  def self.encrypt (str)
    matrix = [['s','i','o','e','r','a','t','n','-','-'],
              ['c','x','u','d','j','p','z','b','k','q'],
              ['.','w','f','l','/','g','m','y','h','v']]
    str = str.gsub(/ /,'/')
    arr =""
    str.each_byte do |c|
      matrix.each_with_index do |row, i|
        row.each_with_index do |a, j|
          if c.chr==a
            if i==0
              arr<<j.to_s
            else
              arr<<(i+7).to_s+j.to_s
            end
          end
        end
      end
    end
    arr
  end

  def self.decrypt(str)
    matrix = [['s','i','o','e','r','a','t','n','-','-'],
              ['c','x','u','d','j','p','z','b','k','q'],
              ['.','w','f','l','/','g','m','y','h','v']]
    txt = ""
    j = 0
    str.each_byte do |c|
      d = c.chr.to_i
      if j==0
        if d<8
          txt+=matrix[0][d]
          j = 0
        else
          if d == 8
            j = 1
          else
            j = 2
          end
        end
      else
        txt+=matrix[j][d]
        j=0
      end
    end
    txt
  end
end
