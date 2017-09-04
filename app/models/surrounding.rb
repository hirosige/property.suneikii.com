# == Schema Information
#
# Table name: surroundings
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :decimal(16, 13)
#  longitude  :decimal(16, 13)
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Surrounding < ActiveRecord::Base
  has_many :apartment_surroundings
  has_many :apartments, :through => :apartment_surroundings

  mount_uploader :photo, SurroundingThumbnailUploader
end
