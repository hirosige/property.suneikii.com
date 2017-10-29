# == Schema Information
#
# Table name: land_thumbnails
#
#  id         :integer          not null, primary key
#  land_id    :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :land_thumbnail do
    land_id 1
    image "MyString"
  end
end
