class Booking < ActiveRecord::Base
  belongs_to :location
  validates :firstname, :lastname, :telephone, :email, :registration_number, :location, presence: true
  
  def self.search(search)
    where("firstname LIKE ? OR lastname LIKE ? OR telephone LIKE ? OR email LIKE ? OR make LIKE ? OR model LIKE ? OR registration_number LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    
  end
end
