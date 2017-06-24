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

require 'rails_helper'

RSpec.describe ApartmentSurrounding, type: :model do

  it "can create" do
    apartment_surrounding = ApartmentSurrounding.new
    expect(apartment_surrounding.class.to_s).to eq('ApartmentSurrounding')
  end

end
