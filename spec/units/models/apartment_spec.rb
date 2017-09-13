# == Schema Information
#
# Table name: apartments
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  rent_fee         :integer
#  security_deposit :integer
#  deposit          :integer
#  transportation   :text(65535)
#  utility_fee      :integer
#  key_money        :integer
#  address          :text(65535)
#  since_when       :date
#  room_type_id     :integer
#  space            :string(255)
#  photo            :string(255)
#  recommendations  :text(65535)
#  status           :string(255)
#  provider_id      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  country_id       :integer
#  province_id      :integer
#  district_id      :integer
#  subdistrict_id   :integer
#

require 'rails_helper'

RSpec.describe Apartment, type: :model do

  it "can create" do
    create(:country_thai)

    apartment = Apartment.new
    expect(apartment.class.to_s).to eq('Apartment')
  end

end
