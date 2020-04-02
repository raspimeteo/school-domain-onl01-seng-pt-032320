class School
  
  attr_accessor :roster
    
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
 ##   binding.pry
    if @roster[grade] == nil
      @roster[grade] = []
    end
      @roster[grade] << student_name
  end
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    ## map gives grade the value of the key and the students in an array
    @roster.map do |grade, students|
    ## now we can sort the students array to itself with sort!
    students.sort!
  end
  ## here we return the roster with the sorted array of students
  roster
  end
end