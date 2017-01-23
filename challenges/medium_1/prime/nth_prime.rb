class Prime
  def self.nth(place)
    raise ArgumentError if place < 1
    @place = place
    
    primes = [2]
    current = 3
    
    while primes.size < @place
      primes << current if is_prime?(current)
      current += 2
    end
    
    primes.last
  end
  
  def self.is_prime?(number)
    prime_flag = true
    (2..Math.sqrt(number)).each do |div|
      prime_flag = false if number % div == 0
    end
    
    prime_flag
  end
end # end Prime class
