# == Schema Information
#
# Table name: apartment_surroundings
#
#  id             :integer          not null, primary key
#  apartment_id   :integer
#  surrounding_id :integer
#  distance       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryBot.define do
  factory :apartment_surrounding do
    apartment_id 1
    surrounding_id 1
    distance 1
  end
end
