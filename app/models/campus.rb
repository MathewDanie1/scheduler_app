class Campus < ActiveRecord::Base
  attr_accessible :address, :name
  has_many :classrooms
  has_many :programs
  has_many :courses
end
