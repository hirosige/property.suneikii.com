require 'rails_helper'

RSpec.describe Front::ApartmentsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      create(:province_bangkok)
      create(:district_dusit)

      get :index, province: 'bangkok', district: 'dusit'
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      Apartment.create

      get :show, id: 1
      expect(response).to have_http_status(:success)
    end
  end

end
