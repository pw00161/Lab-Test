require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
    test 'should not save empty location' do
    location = Location.new
    
    location.save
    refute location.valid?
  end
  
  test 'should save valid location' do
    location = Location.new
    
    location.title = 'My location'
    location.description = 'My location is very special'
    
    location.save
    assert location.valid?
  end
  
  test 'should not save duplicate location title' do
    location1 = Location.new
    location1.title = 'My Location'
    location1.description = 'My location is very special.'
    location1.save
    assert location1.valid?

    location2 = Location.new
    location2.title = 'My Location'
    location2.description = 'My location is very special.'
    location2.save
    refute location2.valid?
    
  end
  
end
