class PhoneNumber
  def initialize(number)
    @number = number
  end
  
  def number
    return '0000000000' if @number.match(/[a-zA-Z]/)
    temp = @number.delete('^[0-9]')
    (temp.length == 10 || (temp.length == 11 && temp[0] == '1')) ? parse_number(temp) : '0000000000'
  end
  
  def parse_number(clean_number)
    @number = clean_number.length == 11 ? clean_number[1..-1] : clean_number
  end
  
  def area_code
    area_code = number
    area_code[0..2]
  end
  
  def to_s
    pretty_number = number
    "(#{pretty_number[0..2]}) #{pretty_number[3..5]}-#{pretty_number[6..-1]}"
  end
end
