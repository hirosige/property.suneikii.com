# == Schema Information
#
# Table name: room_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RoomType < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
end
