json.array!(@goods_categories) do |goods_category|
  json.extract! goods_category, :id, :name
  json.url goods_category_url(goods_category, format: :json)
end
