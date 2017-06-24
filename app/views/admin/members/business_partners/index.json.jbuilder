json.array!(@business_partners) do |business_partner|
  json.extract! business_partner, :id, :first_name, :last_name, :birthday, :gender_id, :zip_code, :address, :tel1, :tel2, :memo, :user_id
  json.url business_partner_url(business_partner, format: :json)
end
