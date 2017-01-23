class Prime
  class << self
    def nth(num)
      raise ArgumentError if num < 1

      primes(num).last
    end

    private

    def prime?(n)
      (2..Math.sqrt(n)).each { |divisor| return false if n % divisor == 0 }
      true
    end

    def primes(amount)
      index = 2
      results = []
      while results.size < amount
        results << index if prime?(index)
        index += 1
      end

      results
    end
  end
end