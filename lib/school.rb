# code here!

class School
  def initialize(name)
      @name = name
      @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    self.roster.reduce({})do |sorted_roster, (grade, students)| 
      sorted_roster[grade] = students.sort
      sorted_roster
    end
    #@roster.transform_values {|students| students.sort}
  end
  #self.roster == @roster
end

school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 9)
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster
school.grade(9)
school.sort


