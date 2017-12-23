require 'rails_helper'
RSpec.describe 'show sell information', type: :feature, js: true do
  before do
    # prepare data
  end

  scenario 'Go to product pageaaa from top page ' do
    visit root_path(:locale => 'en')

    page.driver.browser.save_screenshot './spec/reports/output/apartments/test.png'

    expect(page).to have_content 'Property Suneikii'
    expect(page).to have_content '© 2017 Property Suneikii Powered by Suneikii.com All Rights Reserved.'

    click_link('Apartments')

    expect(page.current_path).to eq '/en/apartments'
    expect(page).to have_css("i.fa.fa-building-o.top-footer__icon")
  end
end
