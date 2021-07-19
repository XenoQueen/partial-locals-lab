class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(term)
    if term == ""
      return Student.all
    else
      return Student.all.filter{|s| s.name.downcase.include?(term.downcase) }
    end 
  end
end