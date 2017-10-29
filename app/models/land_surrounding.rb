# == Schema Information
#
# Table name: land_surroundings
#
#  id             :integer          not null, primary key
#  land_id        :integer
#  surrounding_id :integer
#  distance       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class LandSurrounding < ActiveRecord::Base
  belongs_to :land
  belongs_to :surrounding
end
