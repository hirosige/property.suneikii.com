# == Schema Information
#
# Table name: property_inquiries
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  email          :string(255)
#  body           :text(65535)
#  apartment_id   :integer
#  land_id        :integer
#  condominium_id :integer
#  house_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  tel            :string(255)
#

FactoryBot.define do
  factory :property_inquiry do
    name "MyString"
    email "MyString"
    body "MyText"
    apartment_id 1
    land_id 1
    condominium_id 1
    house_id 1
  end
end
