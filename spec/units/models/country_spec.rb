# == Schema Information
#
# Table name: countries
#
#  id          :integer          not null, primary key
#  name_ja     :string(255)
#  name_th     :string(255)
#  name_en     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  original_id :string(255)
#

require 'rails_helper'

RSpec.describe Country, type: :model do
end
