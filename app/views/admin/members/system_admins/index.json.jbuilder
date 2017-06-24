json.array!(@system_admins) do |system_admin|
  json.extract! system_admin, :id, :first_name, :last_name, :birthday, :gender_id, :zip_code, :address, :tel1, :tel2, :memo, :user_id
  json.url system_admin_url(system_admin, format: :json)
end
