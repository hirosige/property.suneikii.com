# == Schema Information
#
# Table name: apartments
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  rent_fee          :integer
#  security_deposit  :integer
#  deposit           :integer
#  transportation    :text(65535)
#  utility_fee       :integer
#  key_money         :integer
#  address           :text(65535)
#  since_when        :date
#  room_type_id      :integer
#  space             :string(255)
#  photo             :string(255)
#  recommendations   :text(65535)
#  status            :string(255)
#  provider_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  country_id        :integer
#  province_id       :integer
#  district_id       :integer
#  subdistrict_id    :integer
#  surety_company_id :integer
#

FactoryBot.define do

  factory :apartment, class: Apartment do |apartment|
    apartment.rent_fee          4000
    apartment.security_deposit  4000
    apartment.deposit           4000
    apartment.transportation    "test"
    apartment.utility_fee       4000
    apartment.key_money         4000
    apartment.address           "test"
    apartment.since_when        "2017-09-09"
    apartment.room_type_id      1
    apartment.space             40
    apartment.recommendations   "test"
    apartment.provider_id       1
    apartment.country_id        1
    apartment.province_id       1
    apartment.district_id       1
    apartment.subdistrict_id    1
    apartment.surety_company_id 1

    apartment.trait :a do |item|
      item.name              "a"
    end

    apartment.trait :b do |item|
      item.name              "b"
    end
  end

  factory :apartment_country, class: Apartment do |apartment|
    apartment.name              "test"
    apartment.rent_fee          4000
    apartment.security_deposit  4000
    apartment.deposit           4000
    apartment.transportation    "test"
    apartment.utility_fee       4000
    apartment.key_money         4000
    apartment.address           "test"
    apartment.since_when        "2017-09-09"
    apartment.room_type_id      1
    apartment.space             40
    apartment.recommendations   "test"
    apartment.provider_id       1
    apartment.province_id       1
    apartment.district_id       1
    apartment.subdistrict_id    1
    apartment.surety_company_id 1
    apartment.country do
      FactoryBot.create(:country, :japan)
    end
  end
end
