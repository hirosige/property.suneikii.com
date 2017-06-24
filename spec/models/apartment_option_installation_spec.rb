# == Schema Information
#
# Table name: apartment_option_installations
#
#  id                  :integer          not null, primary key
#  apartment_id        :integer
#  apartment_option_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'rails_helper'

RSpec.describe ApartmentOptionInstallation, type: :model do

  it "can create" do
    apartment_option_installation = ApartmentOptionInstallation.new
    expect(apartment_option_installation.class.to_s).to eq('ApartmentOptionInstallation')
  end

end
