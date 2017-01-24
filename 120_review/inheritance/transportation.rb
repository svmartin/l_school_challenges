module Transportation
  class Vehicle
  end

  class Truck < Vehicle
  end

  class Car < Vehicle
  end
end

big_green = Transportation::Truck.new
puts big_green
