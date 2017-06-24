# == Schema Information
#
# Table name: use_terms
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  sub_title   :string(255)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe "UseTerms", type: :request do
  describe "GET /use_terms" do
    it "works! (now write some real specs)" do
      get admin_settings_use_terms_path
      expect(response).to have_http_status(302)
    end
  end
end
