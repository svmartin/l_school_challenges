class Cat
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hi. My name is #{@name}."
  end
end

kitty = Cat.new("Sophie")
kitty.greet
