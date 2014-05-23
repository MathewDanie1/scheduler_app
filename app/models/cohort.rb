class Cohort < ActiveRecord::Base
  belongs_to :course
  has_one :classroom, through: :bookings
  attr_accessible :end_date, :name, :start_date, :course, :course_id
end
