require 'securerandom'
class Vernam

#generates random key, len-length of key
def self.key_generate(len)
  #key= SecureRandom.hex(len/2)
  o = [('a'..'z'),('A'..'Z'),(0..9)].map(&:to_a).flatten
  key = (0...len).map { o[rand(o.length)] }.join
  key
end
#makes array of binary codes(for every char) from string
def self.string_to_bin(str)
  str_new= String.new()
  str.each_byte {|c| str_new += c.to_s(2)+" "}
  arr=str_new.split(" ")
  arr.each_with_index{|arr,i | while(arr.length<8)
                                 arr[0]="0"+arr[0]
                               end}
  arr
end
#vernam encryption
def self.vernam_encrypt(str,key)
  length_str=str.length
  arr=string_to_bin(str)
  key_arr=string_to_bin(key)
  res=[]
  arr.zip(key_arr).each {|arr, key_arr| res.push((arr.to_i(2) ^ key_arr.to_i(2)).to_s(2).rjust(arr.length, '0'))}
  result=String.new()
  res.each {|c| result += c+" "}
  result

end
#makes string of chars from string of binary codes
def self.bin_to_string(str)
  str_new= String.new()
  arr=str.split(" ")
  arr.each {|c| str_new += (c.to_i(2)).chr}
  str_new
end
#vernam decryption
def self.vernam_decrypt(str,key)
  length_str=str.length
  arr=str.split(" ")
  key_arr=string_to_bin(key)
  res=[]
  arr.zip(key_arr).each {|arr, key_arr| res.push((arr.to_i(2) ^ key_arr.to_i(2)).to_s(2).rjust(arr.length, '0'))}
  result=String.new()
  res.each {|c| result += c+" "}
  resstr=bin_to_string(result)
  resstr

end
end
