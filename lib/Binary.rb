module Binary
  public def encrypt(word)
    arr=word.bytes
    str=""
    arr.each do |x|
      str<<tobin(x)
      str<<" "
    end
    s = str.strip
    s
  end

  def tobin(a)
    s = 0
    q = 1
    while(a>0)
      s+=q*(a%2)
      q*=10
      a=a/2
    end
    s.to_s
  end

  def toint(a)
    p = 1
    d = 0
    while (a>0)
      d+=p*(a%10)
      p*=2
      a/=10
    end
    d
  end

  public def decrypt(w)
    arr = w.split(" ").map(&:to_i)
    str = ""
    arr.each do |x|
      str<<toint(x).chr
    end
    str
  end
end
