# == Schema Information
#
# Table name: favorites
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  apartment_id :integer
#  land_id      :integer
#  condo_id     :integer
#  house_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category     :string(255)
#

require 'rails_helper'

RSpec.describe Favorite, type: :model do
end
