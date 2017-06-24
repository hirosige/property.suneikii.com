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

RSpec.describe "Surroundings", type: :request do
  describe "GET /surroundings" do
    it "works! (now write some real specs)" do
      get admin_facilities_surroundings_path
      expect(response).to have_http_status(302)
    end
  end
end
