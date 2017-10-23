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

require "rails_helper"

RSpec.describe Admin::Apartments::ApartmentsController, type: :routing do
  describe "routing" do
    let(:url_request) {"/ja/admin/apartments"}
    let(:request)     {"admin/apartments/apartments"}

    it "routes to #index" do
      expect(:get => "#{url_request}").to route_to("#{request}#index", :locale => 'ja')
    end

    it "routes to #new" do
      expect(:get => "#{url_request}/new").to route_to("#{request}#new", :locale => 'ja')
    end

    it "routes to #show" do
      expect(:get => "#{url_request}/1").to route_to("#{request}#show", :id => "1", :locale => 'ja')
    end

    it "routes to #edit" do
      expect(:get => "#{url_request}/1/edit").to route_to("#{request}#edit", :id => "1", :locale => 'ja')
    end

    it "routes to #create" do
      expect(:post => "#{url_request}").to route_to("#{request}#create", :locale => 'ja')
    end

    it "routes to #update via PUT" do
      expect(:put => "#{url_request}/1").to route_to("#{request}#update", :id => "1", :locale => 'ja')
    end

    it "routes to #update via PATCH" do
      expect(:patch => "#{url_request}/1").to route_to("#{request}#update", :id => "1", :locale => 'ja')
    end

    it "routes to #destroy" do
      expect(:delete => "#{url_request}/1").to route_to("#{request}#destroy", :id => "1", :locale => 'ja')
    end
  end
end
