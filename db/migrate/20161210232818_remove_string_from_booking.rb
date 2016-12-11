class RemoveStringFromBooking < ActiveRecord::Migration
  def change
    remove_column :bookings, :string
  end
end
