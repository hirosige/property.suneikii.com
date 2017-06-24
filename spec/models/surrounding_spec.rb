# == Schema Information
#
# Table name: surroundings
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :decimal(16, 13)
#  longitude  :decimal(16, 13)
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Surrounding, type: :model do

  it "can create" do
    surrounding = Surrounding.new
    expect(surrounding.class.to_s).to eq('Surrounding')
  end

end
