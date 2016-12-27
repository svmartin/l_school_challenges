# Use the Sieve of Eratosthenes to find all the prime number from 2 up to a given number.
# method receives the limit
# the multiples of each prime number are NOT prime
# 

class Sieve
  def initialize(limit)
    @limit = limit
  end
  
  def primes
    numbers = (2..@limit).to_a
    factor_range = (2..@limit).to_a
    numbers.each do |number|
      factor_range.each { |fac_num| numbers.delete(number * fac_num) }
    end
    numbers
  end

end # class Sieve end

tester = Sieve.new(30)
p tester.primes


