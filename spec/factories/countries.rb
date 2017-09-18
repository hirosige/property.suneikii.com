# == Schema Information
#
# Table name: countries
#
#  id          :integer          not null, primary key
#  name_ja     :string(255)
#  name_th     :string(255)
#  name_en     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  original_id :string(255)
#

FactoryGirl.define do

  factory :country_japan, class: Country do
    name_ja "日本"
    name_th "yipun"
    name_en "Japan"
    original_id "ja"
  end

  factory :country_thai, class: Country do
    name_ja "タイ"
    name_th "thai"
    name_en "Thai"
    original_id "th"
  end

end
