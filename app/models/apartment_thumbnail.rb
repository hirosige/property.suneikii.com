# == Schema Information
#
# Table name: apartment_thumbnails
#
#  id           :integer          not null, primary key
#  apartment_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  image        :string(255)
#
# Indexes
#
#  index_apartment_thumbnails_on_apartment_id  (apartment_id)
#
# Foreign Keys
#
#  fk_rails_...  (apartment_id => apartments.id)
#

class ApartmentThumbnail < ActiveRecord::Base
  belongs_to :apartment

  mount_uploader :image, ApartmentThumbnailUploader
end
