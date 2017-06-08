# code here!
require 'pry-byebug'

class School
  attr_accessor :roster

  def initialize(school_name)
    @roster = {}
  end

  def add_student(name,grade)
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade,students|
      @roster[grade] = students.sort
    end
  end
end
