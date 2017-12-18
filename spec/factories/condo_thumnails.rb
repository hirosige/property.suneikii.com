# == Schema Information
#
# Table name: condo_thumnails
#
#  id         :integer          not null, primary key
#  condo_id   :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :condo_thumnail do
    condo_id 1
    image "MyString"
  end
end
