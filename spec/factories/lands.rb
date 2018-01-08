# == Schema Information
#
# Table name: lands
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  rent_fee          :integer
#  transportation    :text(65535)
#  address           :text(65535)
#  land_category_id  :integer
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
#  building_coverage :integer
#  floor_area_ratio  :integer
#

FactoryBot.define do

  # valid data
  factory :land, class: Land do |land|
    land.rent_fee 40000
    land.transportation "Test Transportation"
    land.address "Bangkok"
    land.land_category_id 1
    land.space 40
    land.photo "test"
    land.recommendations "test"
    land.provider_id 1
    land.country_id 1
    land.province_id 1
    land.district_id 1
    land.subdistrict_id 1
    land.surety_company_id "test"
    land.building_coverage "test"
    land.floor_area_ratio 1

    land.trait :a do |item|
      item.name "q"
    end

    land.trait :b do |item|
      item.name "b"
    end
  end

  # data has many children
  factory :land_has_many, class: Land do |land|
    land.name "has many"
    land.rent_fee 40000
    land.transportation "Test Transportation"
    land.address "Bangkok"
    land.land_category_id 1
    land.space 40
    land.photo "test"
    land.recommendations "test"
    land.provider_id 1
    land.country_id 1
    land.province_id 1
    land.district_id 1
    land.subdistrict_id 1
    land.surety_company_id "test"
    land.building_coverage "test"
    land.floor_area_ratio 1

    land.trait :apartments do |item|
      item.apartments do
        [
            FactoryBot.create(:apartment, :a),
            FactoryBot.create(:apartment, :b)
        ]
      end
    end
  end

  # data has empty data
  factory :land_empty, class: Land do |land|

    land.trait :name do |emp_item|
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
