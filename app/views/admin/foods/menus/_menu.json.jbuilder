json.extract! menu, :id, :title, :name, :photo, :description, :price, :restaurant_id, :created_at, :updated_at
json.url menu_url(menu, format: :json)