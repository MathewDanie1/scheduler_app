class Program < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :courses
  has_many :cohorts, through: :courses
  has_many :campuses
  has_many :classrooms, through: :campuses
end
