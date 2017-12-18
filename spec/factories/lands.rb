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
  factory :land do
    id ""
    name ""
    rent_fee ""
    transportation ""
    address ""
    land_category_id ""
    space ""
    photo ""
    recommendations ""
    status ""
    provider_id ""
    created_at ""
    updated_at ""
    country_id ""
    province_id ""
    district_id ""
    subdistrict_id ""
    surety_company_id ""
    building_coverage ""
    floor_area_ratio 1
  end
end
