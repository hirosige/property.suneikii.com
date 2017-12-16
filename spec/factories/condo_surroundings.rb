# == Schema Information
#
# Table name: condo_surroundings
#
#  id             :integer          not null, primary key
#  condo_id       :integer
#  surrounding_id :integer
#  distance       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :condo_surrounding do
    condo_id 1
    surrounding_id 1
    distance 1
  end
end
