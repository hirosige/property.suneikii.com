# == Schema Information
#
# Table name: apartment_options
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe ApartmentOption, type: :model do

  it "can create" do
    apartment_option = ApartmentOption.new
    expect(apartment_option.class.to_s).to eq('ApartmentOption')
  end

  it "can register" do
    create(:apartment_option)
    expect(ApartmentOption.all.size).to eq(1)
  end

end
