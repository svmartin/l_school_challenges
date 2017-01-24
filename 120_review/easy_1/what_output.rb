# class Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.upcase
#   end
  
#   def name
#     @name
#   end

#   def to_s
#     "My name is #{@name}."
#   end

class  Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts "1: #{fluffy.name}"
# puts "2: #{fluffy}"
# puts "3: #{fluffy.name}"
# puts "4: #{name}"
