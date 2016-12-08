require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select 'h1', 'Car Parking Space Bookings'
    assert_select 'p1', 'Welcome to the site which manages your car parking bookings!'
    assert_select 'p2', 'We aim to make sure that you will be able to find a car parking space and how much it will cost you for that space'
  end

end
