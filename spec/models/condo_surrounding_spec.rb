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

require 'rails_helper'

RSpec.describe CondoSurrounding, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
