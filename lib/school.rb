require 'pry'

class School
  attr_accessor :school, :roster, :grade
  
  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if !roster.include?(grade) 
      roster[grade] = []
    end
    roster[grade] << student
  end
  
  def grade(input)
    @roster[input]
  end

  def sort
    @roster.map do |key, value|
      puts key => value.sort
    end
  end
end