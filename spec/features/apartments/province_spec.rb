require 'rails_helper'

describe "home", :type => :feature do
  subject{ page }
  let(:user) { create(:user) }

  describe "en" do

    before(:each) {
      visit('/en/apartments')
    }

    it "has text" do

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_en.png", full: true)
    end

  end

  describe "ja" do
    before(:each) {
      visit('/ja/apartments')
    }

    it "has text" do

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_ja.png", full: true)
    end

  end

  describe "th" do
    before(:each) {
      visit('/th/apartments')
    }

    it "has text" do

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_th.png", full: true)
    end
  end

end