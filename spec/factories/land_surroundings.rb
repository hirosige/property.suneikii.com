# == Schema Information
#
# Table name: land_surroundings
#
#  id             :integer          not null, primary key
#  land_id        :integer
#  surrounding_id :integer
#  distance       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryBot.define do
  factory :land_surrounding do
    land_id 1
    surrounding_id 1
    distance 1
  end
end
