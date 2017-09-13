require 'rails_helper'

RSpec.describe Front::UsersController, type: :controller do

  describe "GET #profile" do
    it "returns http success" do
      get :profile
      expect(response).to have_http_status(302)
    end
  end

end
