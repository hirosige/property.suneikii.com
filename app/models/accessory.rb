# == Schema Information
#
# Table name: accessories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Accessory < ActiveRecord::Base
  has_many :room_classes, through: :room_accessories
  has_many :room_accessories, dependent: :destroy
end
