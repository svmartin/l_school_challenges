class Pet
  attr_reader :name, :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  attr_reader :color
  
  def initialize(name, age, color)
    super(name, age)
    @color = color
  end
  
  def to_s
    "My #{name} is #{age} years old and has #{color} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch

# class Pet
#   def initialize(name, age, color)
#     @name = name
#     @age = age
#     @color = color
#   end
# end

# class Cat < Pet
#   attr_reader :name, :age, :color
#   def to_s
#     "My #{name} is #{age} years old and has #{color} fur."
#   end
# end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch
