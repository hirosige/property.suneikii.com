require 'rails_helper'

RSpec.describe "header", :type => :feature do
  subject{ page }
  let(:local_path) {"/top/header"}
  let!(:country)  { create(:country_thai) }
  let!(:province) { create(:province_bangkok) }
  let!(:district) { create(:district_dusit) }
  let!(:sub_district) { create(:subdistrict_dusit) }

  describe 'header in login with ja' do
    before(:each) {
      visit('/en/apartments')
    }

    it "has top header" do
      list_header = find("div.list-header")

      expect(list_header).to have_text(Settings.site[:name])
      expect(list_header).to have_text('物件数No.1の不動産・住宅情報サイト Property Suneikii')

      # lang btns
      expect(list_header).to have_css(".list-header__lang-text", text: "言語切り替え")
      expect(list_header).to have_css("button.btn", text: "ja")
      expect(list_header).to have_css("button.btn", text: "th")

      # login btns
      expect(list_header).to have_css("button.btn", text: "Sign in")

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}#{local_path}/header_ja_logout.png", full: true)
    end

    it "has second header" do
      control_box = find("div.control-box")

      within control_box do
        control_box_left = find("div.control-box--left")
        expect(control_box). to have_css("div.control-box--left")
        expect(control_box). to have_css("a.control-box__login-info", :count => 1)
        expect(control_box). to have_css("a.control-box__login-info", :text => "最近見た物件")

        within control_box_left do
          expect(control_box_left). to have_css("img[src='/assets/snk_logo-592cadf7b4364894a6fd21f607b271357e571f59d48dd86d9c3dbafb57f285dd.jpg']")
          expect(control_box_left). to have_css("button.control-box__btn", :count => 3)
          expect(control_box_left). to have_css("button.control-box__btn", :text => "アパート")
          expect(control_box_left). to have_css("button.control-box__btn", :text => "土地")
          expect(control_box_left). to have_css("button.control-box__btn", :text => "コンドミニアム")
        end
      end

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}#{local_path}/second_header_ja_logout.png", full: true)
    end
  end

  describe 'header in login with ja' do

    before(:each) do
      user = User.find_by(name: 'admin')

      visit('/en/apartments')
      find("button.btn", text: "Sign in").click
      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/users/login.png", full: true)
      fill_in('user[email]', :with => user.email)
      fill_in('user[password]', :with => 'abCD1234')
      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/users/fill_in.png", full: true)
      find(:xpath, '//*[@id="new_user"]/div[1]/input').click
      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/users/after_press_login.png", full: true)
      visit('/ja/apartments')
      page.save_screenshot("#{ENV['TEST_IMG_PATH']}/users/move_to_apartments_after_login.png", full: true)
    end

    it "has top header" do

      # login btns
      expect(page).to have_no_css("button.btn", text: "Sign in")
      expect(page).to have_css("div.dropdown")

      dropdown = find("div.dropdown")

      expect(dropdown).to have_css("button.btn.list-header__info--signed-in-btn")
      expect(dropdown.hover).to have_css("ul.dropdown-menu.list-header__info--signed-in-menu")

      within dropdown do
        button = find("button.btn.list-header__info--signed-in-btn")
        expect(button).to have_css("span.list-header__info--signed-in-name", :text => "admin")
      end

      within dropdown.hover do
        dropdown_menu = find("ul.dropdown-menu.list-header__info--signed-in-menu")
        expect(dropdown_menu).to have_css("li a", :text => "マイページ")
        expect(dropdown_menu).to have_css("li a", :text => "登録情報の変更")
        expect(dropdown_menu).to have_css("li a", :text => "ログアウト")

        page.save_screenshot("#{ENV['TEST_IMG_PATH']}#{local_path}/header_ja_hover_menu.png", full: true)
      end

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}#{local_path}/header_ja_login.png", full: true)
    end

    it "has second header" do
      control_box = find("div.control-box")

      within control_box do
        expect(control_box). to have_css("a.control-box__login-info", :count => 2)
        expect(control_box). to have_css("a.control-box__login-info", :text => "最近見た物件")
        expect(control_box). to have_css("a.control-box__login-info", :text => "お気に入り")
      end

      page.save_screenshot("#{ENV['TEST_IMG_PATH']}#{local_path}/second_header_ja_login.png", full: true)
    end
  end

end