require 'rails_helper'

RSpec.describe Front::ApartmentsController, type: :controller do
  let(:user) { create(:user) }
  let!(:province_bangkok) { create(:province_bangkok) }
  let!(:district_dusit) { create(:district_dusit) }

  describe "GET #index" do
    before do
      login_user user
    end

    it "returns http success" do


      get :index, province: 'bangkok', district: 'dusit'
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      create(:apartment_th)
      apartment = Apartment.first

      get :show, id: apartment.id
      expect(response).to have_http_status(:success)
    end
  end

end
