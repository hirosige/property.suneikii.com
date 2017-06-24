json.array!(@shoppers) do |shopper|
  json.extract! shopper, :id, :shop_name, :representative_name, :zip_code, :address, :tel1, :tel2, :mail_address, :shop_status_id, :account_number, :memo, :user_id
  json.url shopper_url(shopper, format: :json)
end
