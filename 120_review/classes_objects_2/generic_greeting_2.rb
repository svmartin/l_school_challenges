class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def self.generic_greeting
    "Yo! I'm a cat from the #{self} class."
  end
  
  def personal_greeting
    "And this be an instance method, being called on #{name}."
  end
end

kitty = Cat.new('Sophie')

p Cat.generic_greeting
p kitty.personal_greeting
