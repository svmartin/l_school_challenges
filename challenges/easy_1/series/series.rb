# write a program that will take a string of digits and give you all the
# possible consecutive number series of length 'n' in that string.

# For example: "01234" => 012, 123, 234 # for 3-digit strings
# 0123, 1234 # for 4-digit strings

# If you ask for a 5-digit series from a 4-digit string, well, you know...error!

# Receive a string
# Returns an ARRAY of ARRAYS of "n" length.

# create a method
# method should receive 2 arguments: digit string and series length
# check to make sure series length is less than digit string length 
# slice it up while there are still enough digits to create series

class Series
  def initialize(digit_string)
    @d_string = digit_string
  end
  
  def slices(s_length)
    raise ArgumentError, "Series length bigger than digit." if s_length > @d_string.length
    result = []
    left = 0
  
    loop do
      sliced = @d_string.slice(left, s_length)
      result << sliced.split('').map(&:to_i)
      left += 1
      break if @d_string.length - left < s_length
    end
    result
  end
  
end # class Series end
