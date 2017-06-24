# == Schema Information
#
# Table name: room_accessories
#
#  id            :integer          not null, primary key
#  room_class_id :integer
#  accessory_id  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RoomAccessory < ActiveRecord::Base
  belongs_to :room_class
  belongs_to :accessory
end
