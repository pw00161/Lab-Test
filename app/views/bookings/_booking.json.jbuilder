json.extract! booking, :id, :location_id, :firstname, :lastname, :telephone, :email, :make, :string, :model, :registration_number, :created_at, :updated_at
json.url booking_url(booking, format: :json)