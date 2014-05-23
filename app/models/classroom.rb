class Classroom < ActiveRecord::Base
  belongs_to :campus
  has_many :bookings
  attr_accessible :capacity, :name, :campus, :campus_id, :booking_id, :booking
end
