class Person
  attr_accessor :name
  
  def name=(value)
    @f_name, @l_name = value.split
    # @full_name = value.split
    # @f_name = @full_name[0]
    # @l_name = @full_name[1]
  end
  
  def name
    #@full_name.join(' ')
    "#{@f_name} #{@l_name}"
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name
