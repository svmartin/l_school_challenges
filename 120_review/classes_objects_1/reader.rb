class Cat
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def name=(value)
    @name = value
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = "Luna"
kitty.greet
