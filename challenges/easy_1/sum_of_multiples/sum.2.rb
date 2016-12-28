class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples.empty? ? [3, 5] : multiples
  end
  
  def self.to(limit)
    SumOfMultiples.new.to(limit)
  end
  
  def to(limit)
    result = (1...limit).select { |number| multiple?(number) }
    result.inject(&:+)
  end
  
  private
  
  def multiple?(number)
    @multiples.any? { |multiple| number % multiple == 0 }
  end
end # class SumOfMultiples end

p SumOfMultiples.to(10) # multiples of 3 or 5 up until 10 but not includinf # sum them up
tester = SumOfMultiples.new
p tester.to(10)
