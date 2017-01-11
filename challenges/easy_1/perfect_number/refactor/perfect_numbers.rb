class PerfectNumber
  def initialize()
    #
  end
  
  def self.classify(number)
    return 'deficient' if is_prime?(number)
    if factors(number).inject(&:+) == number
      "perfect"
    else
      "abundant"
    end
  end
  
  def self.factors(number)
    result = []
    1.upto(number - 1) do |num|
      result << num if number % num == 0
    end
    result
  end
  
  def self.is_prime?(number)
    prime_flag = true
    
    2.upto(number) do |num|
      prime_flag = false if number % num == 0
      break if num > number / 2
    end
    prime_flag
  end
end # class PerfectNumber end

p PerfectNumber.classify(13)
p PerfectNumber.classify(28)
p PerfectNumber.classify(12)