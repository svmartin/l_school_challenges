class Pet
  attr_reader :animal, :name
  
  def initialize(animal, name)
    @animal = animal
    @name = name
  end
  
  def to_s
    "A #{animal} named #{name}."
  end
end

class Owner
  attr_reader :name, :pets
  
  def initialize(name)
    @name = name
    @pets = []
  end
  
  def add(pet)
    @pets.push(pet)
  end
  
  def number_of_pets
    @pets.size
  end
  
  def print_pets
    @pets.each { |pet| puts pet }
  end
end

class Shelter
  attr_reader :owners
  
  def initialize
    #@owners = []
    @owners = {}
  end  
  
  def adopt(owner, pet)
    #@owners << owner unless @owners.include?(owner)
    owner.add(pet)
    @owners[owner.name] ||= owner
  end
  
  def print_adoptions
    @owners.each_pair do |name, owner_object|
      puts "#{name} has adopted the following pets:"
      owner_object.print_pets
      puts ""
    end
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "==========="
p shelter.owners
