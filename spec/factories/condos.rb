# == Schema Information
#
# Table name: condos
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
#  country_id        :integer
#  province_id       :integer
#  district_id       :integer
#  subdistrict_id    :integer
#  surety_company_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryBot.define do

  # valid data
  factory :condo, class: Condo do |condo|
    condo.rent_fee 1
    condo.security_deposit 1
    condo.deposit 1
    condo.transportation "MyText"
    condo.utility_fee 1
    condo.key_money 1
    condo.address "MyText"
    condo.since_when "2017-12-16"
    condo.room_type_id 1
    condo.space "MyString"
    condo.photo "MyString"
    condo.recommendations "MyText"
    condo.provider_id 1
    condo.country_id 1
    condo.province_id 1
    condo.district_id 1
    condo.subdistrict_id 1
    condo.surety_company_id 1

    condo.trait :a do |item|
      item.name "q"
    end

    condo.trait :b do |item|
      item.name "b"
    end
  end

  # data has many children
  factory :condo_has_many, class: Condo do |condo|
    condo.name "has many"
    condo.rent_fee 40000
    condo.transportation "Test Transportation"
    condo.address "Bangkok"
    condo.land_category_id 1
    condo.space 40
    condo.photo "test"
    condo.recommendations "test"
    condo.provider_id 1
    condo.country_id 1
    condo.province_id 1
    condo.district_id 1
    condo.subdistrict_id 1
    condo.surety_company_id "test"
    condo.building_coverage "test"
    condo.floor_area_ratio 1

    condo.trait :apartments do |item|
      item.apartments do
        [
            FactoryBot.create(:apartment, :a),
            FactoryBot.create(:apartment, :b)
        ]
      end
    end
  end

  # data has empty data
  factory :condo_empty, class: Condo do |condo|

    condo.trait :name do |emp_item|
      emp_item.name "has many"
      emp_item.rent_fee 40000
      emp_item.transportation "Test Transportation"
      emp_item.address "Bangkok"
      emp_item.land_category_id 1
      emp_item.space 40
      emp_item.photo "test"
      emp_item.recommendations "test"
      emp_item.provider_id 1
      emp_item.country_id 1
      emp_item.province_id 1
      emp_item.district_id 1
      emp_item.subdistrict_id 1
      emp_item.surety_company_id "test"
      emp_item.building_coverage "test"
      emp_item.floor_area_ratio 1
    end
  end
end
