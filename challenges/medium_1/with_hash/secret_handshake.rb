class SecretHandshake
  
  THE_CODE = ["wink", "double blink", "close your eyes", "jump"]
  
  def initialize(input)
    @bi_string = input.is_a?(String) ? split_the(input) : convert(input)
  end
  
  def convert(number)
    result = []
    
    while number > 0
      number, remainder = number.divmod(2)
      result.push(remainder.to_s)
    end
    
    result
  end
  
  def reverse?(number)
    #
  end
  
  def split_the(string)
    if string.to_i > 10000
      string = string.to_i - 10000 
      string.to_s.split('')
    else 
      string.split('')
    end
  end

  def commands
    result = []
    @bi_string.each_with_index do |ele, index|
      result << THE_CODE[index] if ele == '1'
    end
    
    @bi_string.join.to_i < 10000 ? result : result.reverse
  end
end

tester = SecretHandshake.new('11001')
p tester.commands == ["wink", "jump"]
p tester.commands