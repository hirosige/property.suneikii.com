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

require 'rails_helper'

RSpec.describe LandThumbnail, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
