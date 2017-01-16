class Octal
  def initialize(string)
    @octal = string
  end
  
  def to_decimal
    return 0 if @octal.match(/[8-9a-zA-Z]/)
    total = 0
    @octal.split('').reverse.each.with_index do |num, index|
      total += (num.to_i * (8**index))
    end
    total
  end
end 
