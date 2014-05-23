class Course < ActiveRecord::Base
  belongs_to :program
  belongs_to :campus
  attr_accessible :name, :program, :program_id, :campus, :campus_id, :course, :course_id
end
