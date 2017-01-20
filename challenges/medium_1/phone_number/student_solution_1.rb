class PhoneNumber
  INVALID = '0000000000'

  attr_reader :phone_number

  def initialize(number)
    @phone_number = format(number)
  end

  def format(number)
    return INVALID if number.match(/[a-zA-Z]/)

    number = number.gsub(/\D/, '')

    return INVALID if invalid?(number)

    number.length == 11 ? number[1, 10] : number
  end

  def invalid?(number)
    number.length < 10 ||
      number.length > 11 ||
      (number.length == 11 && number[0] != '1')
  end

  def number
    phone_number
  end

  def area_code
    phone_number[0, 3]
  end

  def exchange
    phone_number[3, 3]
  end

  def sln
    phone_number[6, 4]
  end

  def to_s
    '(' + area_code + ') ' + exchange + '-' + sln
  end
end