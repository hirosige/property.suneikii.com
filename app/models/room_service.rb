# == Schema Information
#
# Table name: room_services
#
#  id            :integer          not null, primary key
#  room_class_id :integer
#  service_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RoomService < ActiveRecord::Base
  belongs_to :room_class
  belongs_to :service
end
