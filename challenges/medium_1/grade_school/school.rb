class School
  def initialize
    @school = Hash.new
  end
  
  def add(name, grade)
    @school[grade] ? (@school[grade] << name).sort! : @school[grade] = [name]
  end
  
  def grade(level)
    @school[level] || []
  end
  
  def to_h
    @school.sort.to_h
  end
end
