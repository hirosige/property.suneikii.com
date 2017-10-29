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

require 'rails_helper'

RSpec.describe LandSurrounding, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
