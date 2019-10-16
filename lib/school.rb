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
