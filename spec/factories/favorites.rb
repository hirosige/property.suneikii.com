# == Schema Information
#
# Table name: favorites
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  apartment_id :integer
#  land_id      :integer
#  condo_id     :integer
#  house_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category     :string(255)
#

FactoryBot.define do
  factory :favorite do
    user_id 1
    apartment_id 1
    land_id 1
    condo_id 1
    house_id 1
  end
end
