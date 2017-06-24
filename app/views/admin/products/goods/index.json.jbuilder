json.array!(@goods) do |good|
  json.extract! good, :id, :name, :size, :stock, :price, :ingredient, :description, :tenant_name, :category, :keyword, :gender, :memo
  json.url admin_products_good_url(good, format: :json)
end
