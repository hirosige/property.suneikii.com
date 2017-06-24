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

require "rails_helper"

RSpec.describe Admin::Settings::UseTermsController, type: :routing do
  describe "routing" do
    let(:url_request) {"/ja/admin/settings/use_terms"}
    let(:request)     {"admin/settings/use_terms"}

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
