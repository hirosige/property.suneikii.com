json.array!(@shop_statuses) do |shop_status|
  json.extract! shop_status, :id, :name, :shopper_id
  json.url shop_status_url(shop_status, format: :json)
end
