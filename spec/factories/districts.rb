# == Schema Information
#
# Table name: districts
#
#  id                   :integer          not null, primary key
#  name_ja              :string(255)
#  name_th              :string(255)
#  name_en              :string(255)
#  province_id          :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  original_id          :string(255)
#  province_original_id :string(255)
#  url_safe             :string(255)
#  apartments_count     :integer          default(0), not null
#  lands_count          :integer          default(0), not null
#  condos_count         :integer          default(0), not null
#
# Indexes
#
#  index_districts_on_province_id  (province_id)
#
# Foreign Keys
#
#  fk_rails_...  (province_id => provinces.id)
#

FactoryBot.define do
  factory :district_dusit, class: District do
    name_ja "Dusit"
    name_th "Dusit"
    name_en "Dusit"
    original_id 'dusit'
    province_original_id 'bangkok'
    url_safe 'dusit'
  end

  factory :district_bangna, class: District do
    name_ja "bangna"
    name_th "Bangna"
    name_en "Bangna"
    original_id 'bangna'
    province_original_id 'bangna'
    url_safe 'bangna'
  end
end
