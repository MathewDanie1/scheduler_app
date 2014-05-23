class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :bio, :email, :name, :password, :password_field, :password_digest, :password_confirmation, :phone, :role, :cohort, :cohort_id
  
  has_many :enrollments, foreign_key: :student_id
  has_many :studied_cohorts, through: :enrollments, source: :cohort
  has_many :teaching_assignments, foreign_key: :instructor_id
  has_many :taught_cohorts, through: :teaching_assignments, source: :cohort
  has_many :bookings, foreign_key: :producer_id

  validates :email, presence: true, uniqueness: true

  before_save :ensure_role_is_set  

  def ensure_role_is_set
    if self.role.nil?
      self.role = "student"
    end
  end  
  
  def role? role
    self.role == role.to_s
  end
end


