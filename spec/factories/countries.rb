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
  factory :country do
    name_ja "MyString"
    name_th "MyString"
    name_en "MyString"
  end
end
