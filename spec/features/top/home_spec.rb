require 'rails_helper'

describe "home", :type => :feature do
  subject{ page }

  describe "en" do
    before {
      visit('/en')
    }

    it "has text" do
      expect(page).to have_text('Property Suneikii')

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_en.png", full: true)
    end
  end

  describe "ja" do
    before {
      visit('/ja')
    }

    it "has text" do
      expect(page).to have_text('Property Suneikii')

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_ja.png", full: true)
    end
  end

  describe "th" do
    before {
      visit('/th')
    }

    it "has text" do
      expect(page).to have_text('Property Suneikii')

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/top/home/home_th.png", full: true)
    end
  end


  # it "test2" do
  #   within("form") do
  #     fill_in "q", with: "aaa"
  #   end
  #   click_button "Google 検索"
  #   expect(page).to have_text('aaa')
  #   page.save_screenshot('screenshot.png')
  #   page.save_screenshot('screenshot2.png', full: true)
  #   expect(page).to have_text('次へ')
  # end
end