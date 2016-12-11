require 'test_helper'

class BookingsControllerTest < ActionController::TestCase
  setup do
    @booking = bookings(:one)
    @location = locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookings)
  end

  test "should get new" do
    get :new, location_id: @location
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post :create, booking: { email: @booking.email, firstname: @booking.firstname, lastname: @booking.lastname, location_id: @location, make: @booking.make, model: @booking.model, registration_number: @booking.registration_number, telephone: @booking.telephone }
    end

    assert_redirected_to booking_path(assigns(:booking))
  end

  test "should show booking" do
    get :show, id: @booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booking
    assert_response :success
  end

  test "should update booking" do
    patch :update, id: @booking, booking: { email: @booking.email, firstname: @booking.firstname, lastname: @booking.lastname, location_id: @location, make: @booking.make, model: @booking.model, registration_number: @booking.registration_number, telephone: @booking.telephone }
    assert_redirected_to booking_path(assigns(:booking))
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete :destroy, id: @booking
    end

    assert_redirected_to bookings_path
  end
end
