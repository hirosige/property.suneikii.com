# == Schema Information
#
# Table name: room_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :empty_room_type, class: RoomType do
    name ""
  end

  factory :room_type_test, class: RoomType do
    name "test"
  end

  factory :room_type_test2, class: RoomType do
    name "test2"
  end
end
