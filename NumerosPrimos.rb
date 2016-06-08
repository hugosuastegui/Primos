require "prime"
# p primes = Prime.take(10)

def prime_factors(integer)
  primes = Prime.take(20)
  arr = []
  i = 0
  loop do 
      if integer % primes[i] == 0
        integer = integer / primes[i]
        arr << primes[i]
      else
      i += 1
      end
      break if integer == 1
  end
  arr
end

p prime_factors(4) == [2, 2]
p prime_factors(9) == [3, 3]
p prime_factors(12) == [2, 2, 3]
p prime_factors(34) == [2, 17]

=begin
 1.- DIVIDE integer entre el más pequeño de los números primos.
 2.- IF quotient is not PRIME do 1
 3.- END if quotient = 1
=end
