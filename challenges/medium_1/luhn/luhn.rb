class Luhn
  def initialize(number)
    @num_array = number.to_s.chars.map(&:to_i)
  end
  
  def checksum
    addends.inject(&:+)
  end
  
  def addends
    @num_array.reverse.map.with_index do |num, index|
      case 
      when index.even? then num
      when (num * 2) < 10 then num * 2
      else (num * 2) - 9
      end
    end.reverse
  end
  
  def self.create(number)
    num_str = number.to_s
    fixers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  
    fixers.map! { |fixer| num_str + fixer }
    fixers.map!(&:to_i)
    
    result = fixers.select do |fixer|
      fixer = Luhn.new(fixer)
      fixer.valid?
    end
    
    result.join.to_i
  end
  
  def valid?
    checksum % 10 == 0
  end
end
