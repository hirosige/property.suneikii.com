json.extract! order, :id, :order_id, :order_date, :user_id, :status, :total_amount, :shipping_cost, :tax, :note, :timeline_id, :created_at, :updated_at
json.url order_url(order, format: :json)