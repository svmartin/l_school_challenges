class RomanNumerals
  def initialize(number)
    @number = number
  end
  
  def to_roman
    roman = ''
    while @number > 0
      case
      when @number >= 1000 then roman << "M" && @number -= 1000
      when @number >= 900 then roman << "CM" && @number -= 900
      when @number >= 500 then roman << "D"  && @number -= 500
      when @number >= 400 then roman << "CD" && @number -= 400
      when @number >= 100 then roman << "C" && @number -= 100
      when @number >= 90 then roman << "XC" && @number -= 90
      when @number >= 50 then roman << "L" && @number -= 50
      when @number >= 40 then roman << "XL" && @number -= 40
      when @number >= 10 then roman << "X" && @number -= 10
      when @number == 9 then roman << "IX" && @number -= 9
      when @number == 8 then roman << "V" && @number -= 5
      when @number == 7 then roman << "V" && @number -= 5
      when @number == 6 then roman << "V" && @number -= 5
      when @number == 5 then roman << "V" && @number -= 5
      when @number == 4 then roman << "IV" && @number -= 4
      when @number == 3 then roman << "I" && @number -= 1
      when @number == 2 then roman << "I" && @number -= 1
      when @number == 1 then roman << "I" && @number -= 1
      end
    end
    roman
  end
end # class RomanNumerals end

tester = RomanNumerals.new(7)
p tester.to_roman
