# == Schema Information
#
# Table name: surroundings
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :decimal(16, 13)
#  longitude  :decimal(16, 13)
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :surrounding do
    name "MyString"
    latitude ""
    longitude ""
    photo "MyString"
  end
end
