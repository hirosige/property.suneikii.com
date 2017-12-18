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

  factory :apartment_th, class: Apartment do
    name              "test"
    rent_fee          4000
    security_deposit  4000
    deposit           4000
    transportation    "test"
    utility_fee       4000
    key_money         4000
    address           "test"
    since_when        "2017-09-09"
    room_type_id      1
    space             40
    recommendations   "test"
    provider_id       1
    country_id        1
    province_id       1
    district_id       1
    subdistrict_id    1
    surety_company_id 1
  end
end
