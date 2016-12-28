class Trinary
  def initialize(tri_string)
    @trinary = tri_string
  end
  
  def to_decimal
    return 0 if @trinary.match(/[^012]/)
    total = 0
    @trinary.chars.reverse.each_with_index do |digit, index|
      if index == 0
        total += digit.to_i
      else
        total += digit.to_i * (3**index)
      end
    end
    total
  end
end # class Trinary end
