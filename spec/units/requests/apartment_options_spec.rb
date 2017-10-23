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

RSpec.describe "ApartmentOptions", type: :request do
  describe "GET /apartment_options" do
    it "works! (now write some real specs)" do
      get admin_apartment_options_path
      expect(response).to have_http_status(302)
    end
  end
end
