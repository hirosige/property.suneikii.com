require 'faker'

Apartment.destroy_all

200.times do
  province    = Province.where('id >= ?', rand(Province.first.id..Province.last.id)).first
  district    = District.where('id >= ? ', rand(District.where(province_original_id: province.original_id).first.id..District.where(province_original_id: province.original_id).last.id) ).first
  subdistrict = Subdistrict.where('id >= ? ', rand(Subdistrict.where(district_original_id: district.original_id).first.id..Subdistrict.where(district_original_id: district.original_id).last.id) ).first

  random_name             = "#{Faker::Company.name} Apartment"
  random_rent_fee         = Faker::Number.between(10000, 100000)
  random_recommendations  = Faker::Lorem.paragraph
  random_security_deposit = Faker::Number.between(10000, 20000)
  random_deposit          = Faker::Number.between(10000, 20000)
  random_transportation   = Faker::University.name
  random_utility_fee      = Faker::Number.between(1000, 2000)
  random_key_money        = Faker::Number.between(1000, 2000)
  random_address          = "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.country}, #{Faker::Address.zip}"
  since_when              = Faker::Date.between(2000.days.ago, Date.today)
  room_type_id            = Faker::Number.between(1, 5)
  space                   = Faker::Number.between(20, 60)
  random_country_id       = Country.find_by(original_id: 'th').id
  random_province_id      = province.id
  random_district_id      = district.id
  random_subdistrict_id   = subdistrict.id

  apartment = Apartment.new(
      name: random_name,
      rent_fee: random_rent_fee,
      security_deposit: random_security_deposit,
      deposit: random_deposit,
      transportation: random_transportation,
      utility_fee: random_utility_fee,
      key_money: random_key_money,
      address: random_address,
      since_when: since_when,
      room_type_id: room_type_id,
      space: space,
      recommendations: random_recommendations,
      provider_id: 3,
      country_id: random_country_id,
      province_id: random_province_id,
      district_id: random_district_id,
      subdistrict_id: random_subdistrict_id
  )

  apartment.build_apartment_info
  apartment.publish
  apartment.save
end
