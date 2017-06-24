json.extract! restaurant, :id, :name, :phone_number, :description, :notification, :floor, :chairs, :private_room, :photo, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)