# == Schema Information
#
# Table name: apartment_surroundings
#
#  id             :integer          not null, primary key
#  apartment_id   :integer
#  surrounding_id :integer
#  distance       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ApartmentSurrounding < ActiveRecord::Base
  belongs_to :apartment
  belongs_to :surrounding
end
