# == Schema Information
#
# Table name: apartments
#
#  id               :integer          not null, primary key
#  area_id          :integer
#  name             :string(255)
#  rent_fee         :integer
#  security_deposit :integer
#  deposit          :integer
#  transportation   :text(65535)
#  utility_fee      :integer
#  key_money        :integer
#  address          :text(65535)
#  since_when       :date
#  room_type_id     :integer
#  space            :string(255)
#  photo            :string(255)
#  recommendations  :text(65535)
#  status           :string(255)
#  provider_id      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :apartment do
    area_id 1
    name "MyString"
    rent_fee 1
    security_deposit 1
    deposit 1
    transportation "MyText"
    utility_fee 1
    key_money 1
    address "MyText"
    since_when "2017-06-10"
    room_type_id 1
    space "MyString"
    photo "MyString"
    recommendations "MyText"
    status "MyString"
    provider_id 1
  end
end
