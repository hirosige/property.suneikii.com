require 'rails_helper'

describe "home", :type => :feature do
  subject{ page }
  before {
    visit('/')
  }

  it "has text snk" do
    expect(page).to have_text('SNK')
    expect(page).to have_text('Properties')

    # page.save_screenshot('/vagrant/property_suneikii_home.png', full: true)
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