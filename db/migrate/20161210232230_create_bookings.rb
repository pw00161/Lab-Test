class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.belongs_to :location, index: true, foreign_key: true
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.integer :telephone, null: false
      t.string :email, null: false
      t.string :make
      t.string :model
      t.string :registration_number, null: false

      t.timestamps null: false
    end
  end
end
