class Booking < ActiveRecord::Base
  belongs_to :location
  validates :firstname, :lastname, :telephone, :email, :registration_number, :location, presence: true
end
