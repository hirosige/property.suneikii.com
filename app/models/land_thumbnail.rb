# == Schema Information
#
# Table name: land_thumbnails
#
#  id         :integer          not null, primary key
#  land_id    :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LandThumbnail < ActiveRecord::Base
  belongs_to :land

  mount_uploader :image, LandThumbnailUploader
end
