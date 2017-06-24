# == Schema Information
#
# Table name: apartments
#
#  id               :integer          not null, primary key
#  area_id          :integer
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
#

require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "GET /apartments" do
    it "works! (now write some real specs)" do
      get admin_apartments_apartments_path
      expect(response).to have_http_status(200)
    end
  end
end
