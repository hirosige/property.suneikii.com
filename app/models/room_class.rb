# == Schema Information
#
# Table name: room_classes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string(255)
#

class RoomClass < ActiveRecord::Base
  has_many :accessories, through: :room_accessories
  has_many :services,    through: :room_services
  has_many :room_accessories, dependent: :destroy
  has_many :room_services,    dependent: :destroy
  accepts_nested_attributes_for :room_accessories, allow_destroy: true
  accepts_nested_attributes_for :room_services,    allow_destroy: true
end
