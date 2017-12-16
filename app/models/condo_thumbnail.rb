# == Schema Information
#
# Table name: condo_thumbnails
#
#  id         :integer          not null, primary key
#  condo_id   :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CondoThumbnail < ActiveRecord::Base
  belongs_to :condo

  mount_uploader :image, CondoThumbnailUploader
end
