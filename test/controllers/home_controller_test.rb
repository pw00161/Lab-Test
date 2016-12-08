require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select 'h1', 'Car Parking Space Bookings'
    assert_select 'p1', 'Welcome to the site which manages your car parking bookings!'
    assert_select 'p2', 'We aim to make sure that you will be able to find a car parking space and how much it will cost you for that space'
  end
  
  test "should get contact" do
    get :contact
    assert_response:success
    assert_select'h1', 'Contact Us'
    assert_select'pc', 'Please complete the following form to get in contact with us.'
  end

  test "should post request contact but no email" do
    post :request_contact
    
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post :request_contact,
      name: "Piers Wareham", email: "pw00161@surrey.ac.uk",
      telephone: "+447944467130", message: "Problem?"
      
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
