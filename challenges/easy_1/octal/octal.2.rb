class Octal
  attr_reader :octal
  EXCEPTIONS = 'az89'
  BASE = 8

  def initialize(string)
    if string.downcase.count(EXCEPTIONS) > 0
      @octal = [0]
    else
      @octal = string.chars.reverse!.map(&:to_i)
    end
  end

  def to_decimal
    dec_array = []
    octal.each_index do |digit|
      dec_array << octal[digit] * BASE**digit
    end
    dec_array.reduce(:+)
  end
end
