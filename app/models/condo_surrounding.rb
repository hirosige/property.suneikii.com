# == Schema Information
#
# Table name: condo_surroundings
#
#  id             :integer          not null, primary key
#  condo_id       :integer
#  surrounding_id :integer
#  distance       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class CondoSurrounding < ActiveRecord::Base
  belongs_to :condo
  belongs_to :surrounding
end
