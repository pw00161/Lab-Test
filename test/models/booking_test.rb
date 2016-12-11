require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  setup do
    @location = locations(:one)
  end
  
  test 'should not have empty saved task' do
    booking = Booking.new
    
    booking.save
    refute booking.valid?
  end
  
  test 'should save valid booking' do
    booking = Booking.new
    
    booking.location = @location
    
    booking.firstname = "Piers"
    booking.lastname = "Wareham"
    booking.telephone = "07944467130"
    booking.email = "Piers148@hotmail.co.uk"
    booking.make = "Peugeot"
    booking.model = "207_sport"
    booking.registration_number = "HN10 LOJ"
    
    booking.save
    assert booking.valid?
  end
  
end
