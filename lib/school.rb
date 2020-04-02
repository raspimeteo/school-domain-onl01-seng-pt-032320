class School
  
  attr_accessor :roster
    
  def initialize(name)
    ## Set name for school
    @name = name
    ## create empty hash for roster
    @roster = {}
  end

  def add_student(student_name, grade)
  ## if roster for that grade doesn't exist create new array
    if @roster[grade] == nil
      @roster[grade] = []
    end
      ## add student_name to array
      @roster[grade] << student_name
  end
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    ## map gives grade the value of the key and the students in an array
    @roster.map do |grade, students|
    ## now we can sort the students array to itself with sort!
    students = students.sort
  end
  ## here we return the roster with the sorted array of students
  roster
  end
end