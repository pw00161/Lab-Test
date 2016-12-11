class AddDurationToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :duration, :string
  end
end
