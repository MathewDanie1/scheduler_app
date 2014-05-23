class Enrollment < ActiveRecord::Base
  belongs_to :cohort
  belongs_to :student, class_name: "User", foreign_key: "student_id"
  attr_accessible :paid, :pre_work_completed, :cohort, :cohort_id, :student, :student_id
end
