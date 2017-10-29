# == Schema Information
#
# Table name: land_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  land_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :land_category do
    name "MyString"
    land_id 1
  end
end
