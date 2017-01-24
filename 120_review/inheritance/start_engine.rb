class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def initialize(year)
    super # super WITHOUT parentheses means ALL arguments are passed
    start_engine
  end
  
  def start_engine
    puts 'Ready to go!'
  end
end

truck1 = Truck.new(1994)
puts truck1.year
puts "============"
puts Truck.ancestors
