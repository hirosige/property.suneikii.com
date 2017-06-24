json.array!(@shoppers_distributors) do |shoppers_distributor|
  json.extract! shoppers_distributor, :id, :shopper_id, :distributor_id
  json.url shoppers_distributor_url(shoppers_distributor, format: :json)
end
