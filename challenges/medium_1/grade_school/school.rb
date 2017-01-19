# store students' names along with the grade they are in
# add student and grade to roster
# be able to print out roster for each grade
# be able to print out roster for entire school, sorted by
# 1: grade
# 2: alphabetically within each grade

class School
  def initialize
    @school = Hash.new(0)
  end
  
  def add(student, grade)
    if @school.keys.include?(grade)
      (@school[grade] << student).sort!
    else
      @school[grade] = [student]
    end
  end
  
  def grade(level)
    @school.keys.include?(level) ? @school[level] : []
  end
  
  def to_h
    @school.sort.to_h
  end
end # end School class

# need to sort by 1: grades (1, 2, 3, etc)
# need to sort by 2: names WITHIN each grade

# school = School.new
# p school
# school.add('Julie', 5)
# school.add('James', 5)
# school.add('Blair', 5)
# school.add('Logan', 5)
# school.add('Grary', 2)
# school.add('Leslie', 7)
# p school.grade(5)
# p school.grade(1)
