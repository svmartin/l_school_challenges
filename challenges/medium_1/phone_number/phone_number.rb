class PhoneNumber
  INVALID = '0000000000'
  
  def initialize(number)
    @phone_number = parse(number)
  end
  
  def phone_number
    @phone_number
  end
  
  def parse(number)
    return INVALID if number.match(/[a-zA-Z]/)
    num = number.delete('^[0-9]')
    (num.length == 10 || (num.length == 11 && num[0] == '1')) ? process(num) : INVALID
  end
  
  def process(clean_number)
    clean_number.length == 11 ? clean_number[1..-1] : clean_number
  end
  
  def number
    phone_number
  end
  
  def area_code
    phone_number[0..2]
  end
  
  def to_s
    "(" + area_code + ") " "#{phone_number[3..5]}-#{phone_number[6..-1]}"
  end
end
