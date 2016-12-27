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
  
end
