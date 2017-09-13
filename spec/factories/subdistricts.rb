# == Schema Information
#
# Table name: subdistricts
#
#  id                   :integer          not null, primary key
#  name_ja              :string(255)
#  name_th              :string(255)
#  name_en              :string(255)
#  district_id          :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  original_id          :string(255)
#  district_original_id :string(255)
#  url_safe             :string(255)
#
# Indexes
#
#  index_subdistricts_on_district_id  (district_id)
#
# Foreign Keys
#
#  fk_rails_...  (district_id => districts.id)
#

FactoryGirl.define do
  factory :subdistrict_dusit, class: Subdistrict do
    name_ja "Dusit"
    name_th "Dusit"
    name_en "Dusit"
    original_id 'dusit'
    district_original_id 'dusit'
    url_safe 'dusit'
  end
end
