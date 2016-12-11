class Location < ActiveRecord::Base
    has_many :bookings, dependent: :destroy
    validates :title, presence: true
    validates :title, uniqueness: true
end
