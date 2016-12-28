class Octal
  def initialize(str)
    @digits = str.chars
  end

  def to_decimal
    return 0 if @digits.any? { |digit| digit =~ /[^0-7]/ }
    @digits
      .map(&:to_i)
      .reverse
      .each_with_index
      .map { |digit, index| digit * (8 ** index) }
      .inject(:+)
  end
end
