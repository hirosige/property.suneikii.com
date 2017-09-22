require 'rails_helper'

describe "home", :type => :feature do
  subject{ page }

  describe "en" do
    before(:each) {
      visit('/')
    }

    it "has text" do
      expect(page).to have_text(Settings.site[:name])
      expect(page).to have_text('Select a kind of property')
      expect(page).to have_text('© 2017 Property Suneikii Powered by Suneikii.com All Rights Reserved.')

      # Buttons
      expect(page).to have_content('Apartments')
      expect(page).to have_content('Condominiums')
      expect(page).to have_content('Houses')
      expect(page).to have_content('Lands')

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_en.png", full: true)
    end

    it "click_link_apartments" do
      page.click_link('Apartments')
      expect(page).to have_current_path(apartment_province_list_path(:locale => :en))

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_moved_to_apartments_en.png", full: true)
    end
  end

  describe "ja" do
    before(:each) {
      visit('/ja')
    }

    it "has text" do
      expect(page).to have_text(Settings.site[:name])
      expect(page).to have_text('物件を探す')
      expect(page).to have_text('© 2017 Property Suneikii Powered by Suneikii.com All Rights Reserved.')

      # Buttons
      expect(page).to have_content('アパート')
      expect(page).to have_content('コンド')
      expect(page).to have_content('家')
      expect(page).to have_content('土地')

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_ja.png", full: true)
    end

    it "click_link_apartments" do
      page.click_link('アパート')
      expect(page).to have_current_path(apartment_province_list_path(:locale => :ja))

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_moved_to_apartments_ja.png", full: true)
    end
  end

  describe "th" do
    before(:each) {
      visit('/th')
    }

    it "has text" do
      expect(page).to have_text(Settings.site[:name])
      # TODO 物件を探す
      expect(page).to have_text('© 2017 Property Suneikii Powered by Suneikii.com All Rights Reserved.')

      # Buttons

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_th.png", full: true)
    end
  end

end