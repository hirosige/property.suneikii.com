require 'rails_helper'
RSpec.describe 'show sell information', type: :feature, js: true do
  before do
    # prepare data
  end

  scenario 'Go to product pageaaa from top page ' do
    visit 'https://google.com'
    current_window.resize_to(1140, 640)
    save_screenshot './google.png'
    expect(page).to have_content 'Google'
  end
end
