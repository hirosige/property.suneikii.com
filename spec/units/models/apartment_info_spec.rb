# == Schema Information
#
# Table name: apartment_infos
#
#  id                   :integer          not null, primary key
#  remarks              :text(65535)
#  photo                :string(255)
#  latitude             :decimal(16, 13)
#  longitude            :decimal(16, 13)
#  floors               :integer
#  made_of              :string(255)
#  reconstructed_or_not :integer
#  renovated_or_not     :integer
#  car_park_or_not      :integer
#  bicycle_park_or_not  :integer
#  bike_park_or_not     :integer
#  can_have_pet_or_not  :integer
#  contact_span         :integer
#  conditions           :string(255)
#  update_fee           :integer
#  published_on         :date
#  updating_on          :date
#  property_status      :string(255)
#  availability         :string(255)
#  management_id        :string(255)
#  apartment_id         :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe ApartmentInfo, type: :model do
  it "can create" do
    apartment_info = ApartmentInfo.new
    expect(apartment_info.class.to_s).to eq('ApartmentInfo')
  end

  it "can create" do
    apartment_info = ApartmentInfo.new
    expect(apartment_info.class.to_s).to eq('ApartmentInfo')
  end
end
