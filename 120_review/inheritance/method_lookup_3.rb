module Flyable
  def fly
    "I'm flying!"
  end
end

module Climbable
end

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
  include Flyable
  include Climbable
end

bird1 = Bird.new('Red')
bird1.color

puts Bird.ancestors
