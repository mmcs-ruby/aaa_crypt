require 'prime'

module RSA

    class Key

        def initialize(bits = 8)
            @@bits = bits
            @p = pseudo_random_prime
            @q = pseudo_random_prime
            @n = @p*@q
            @f = (@p-1)*(@q-1) 
            @e = 257
            @d = invmod(@e, @f)
        end
        
        def pseudo_random_prime
            number = '1'
            for i in 1..@@bits
                number = number + Random.rand(0..1).to_s
            end
            number = toint(number.to_i)
            until Prime.prime?(number) || number == @p || number == @q do
                number = number+1
            end
            number
        end

        def random_prime
            number = Random.rand(10..100)
            until Prime.prime?(number) || number == @p || number == @q do
              number = Random.rand(10..100)
            end
            number
        end

        class Pair
            attr_accessor :head, :tail
          
            def initialize(h, t)
                @head, @tail = h, t
            end
        end

        public def pubkey
            Pair.new(@e, @n)
        end

        public def cipher(message, pubkey = pubkey())
            message.bytes.map do |byte| 
              cbyte = ((byte.to_i ** pubkey.head) % pubkey.tail).to_s
              missing_chars = pubkey.tail.to_s.size - cbyte.size
              '0' * missing_chars + cbyte
            end.join
        end

        public def decipher(ciphed_message)
            ciphed_message.chars.each_slice(@n.to_s.size).map do |arr|
              (arr.join.to_i ** @d) % @n
            end.pack('c*')
        end

    end
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

#имплементация не моя
def extended_gcd(a, b)
    last_remainder, remainder = a.abs, b.abs
    x, last_x, y, last_y = 0, 1, 1, 0
    while remainder != 0
        last_remainder, (quotient, remainder) = remainder, last_remainder.divmod(remainder)
        x, last_x = last_x - quotient*x, x
        y, last_y = last_y - quotient*y, y
    end
    return last_remainder, last_x * (a < 0 ? -1 : 1)
end
#здесь тоже не моя 
def invmod(e, et)
    g, x = extended_gcd(e, et)
    raise 'The maths are broken!' if g != 1
    x % et
end