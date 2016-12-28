class Trinary
  def initialize(input)
    @value = /^[0-2]+$/ =~ input ? input : '0'
  end

  def to_decimal
    @value.chars.inject(0) { |sum, num| (sum + num.to_i) * 3 } / 3
  end
end