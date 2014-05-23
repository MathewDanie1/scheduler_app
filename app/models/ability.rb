class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    
    if user.role? :admin
      can :manage, :all
    elsif user.role? :producer
      can :manage, :all
      # can :manage, [Booking, Cohort, Classroom, Enrollment, TeachingAssignment, Course]
      # can :read,  Program
    elsif user.role? :instructor
      can :manage, User do |user_resource|
          user_resource.id == user.id
          end   
      can :show, User 
      can :show, TeachingAssignment do |user_resource|
          user_resource.id == user.id
          end   
      can :read, TeachingAssignment
      can :read, [Program, Course, Campus, Cohort, Classroom, Booking]
    elsif user.role? :student
      can :manage, User do |user_resource|
          user_resource.id == user.id
          end   
      can :show, User    
      can :read, Enrollment do |user_resource|
          user_resource.id == user.id
          end 
      can :read, [Program, Course, Campus, Cohort]
    else
      can :read, Program
      can :create, User 
      can :manage, User do |user_resource|
          user_resource.id == user.id
          end  
    end
  end           
end
