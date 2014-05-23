class TeachingAssignment < ActiveRecord::Base
  belongs_to :cohort
  belongs_to :instructor, class_name: "User", foreign_key: "instructor_id"
  attr_accessible :rate, :cohort, :cohort_id, :instructor, :instructor_id
end
