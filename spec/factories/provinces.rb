# == Schema Information
#
# Table name: provinces
#
#  id                  :integer          not null, primary key
#  name_ja             :string(255)
#  name_th             :string(255)
#  name_en             :string(255)
#  country_id          :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  original_id         :string(255)
#  country_original_id :string(255)
#  url_safe            :string(255)
#  apartments_count    :integer          default(0), not null
#  lands_count         :integer          default(0), not null
#  condos_count        :integer          default(0), not null
#
# Indexes
#
#  index_provinces_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#

FactoryBot.define do

  # valid data
  factory :province, class: Province do |province|
    province.trait :bangkok do |item|
      item.name_ja "バンコク"
      item.name_th "Bangkok"
      item.name_en "Bangkok"
      item.original_id 'bangkok'
      item.country_original_id 'th'
      item.url_safe 'bangkok'
    end

    province.trait :phuket do |item|
      item.name_ja "プーケット"
      item.name_th "Phuket"
      item.name_en "Phuket"
      item.original_id 'phuket'
      item.country_original_id 'th'
      item.url_safe 'phuket'
    end
  end

  # data has many children
  factory :province_has_many, class: Province do |province|
    province.name_ja "バンコク"
    province.name_th "Bangkok"
    province.name_en "Bangkok"
    province.original_id "bangkok"
    province.country_original_id 'th'

    province.trait :districts do |item|
      item.districts do
        [
            FactoryBot.create(:district_dusit),
            FactoryBot.create(:district_bangna)
        ]
      end
    end

    province.trait :apartments do |item|
      item.apartments do
        [
            FactoryBot.create(:apartment, :a),
            FactoryBot.create(:apartment, :b)
        ]
      end
    end
  end

  # data has empty data
  factory :province_empty, class: Province do |province|

    province.trait :name_ja do |emp_item|
      emp_item.name_ja ""
      emp_item.name_th "Phuket"
      emp_item.name_en "Phuket"
      emp_item.original_id 'phuket'
      emp_item.country_original_id 'th'
      emp_item.url_safe 'phuket'
    end

    province.trait :name_en do |emp_item|
      emp_item.name_ja "プーケット"
      emp_item.name_th "Phuket"
      emp_item.name_en ""
      emp_item.original_id 'phuket'
      emp_item.country_original_id 'th'
      emp_item.url_safe 'phuket'
    end

    province.trait :name_th do |emp_item|
      emp_item.name_ja "プーケット"
      emp_item.name_th ""
      emp_item.name_en "Phuket"
      emp_item.original_id 'phuket'
      emp_item.country_original_id 'th'
      emp_item.url_safe 'phuket'
    end

    province.trait :original_id do |emp_item|
      emp_item.name_ja "プーケット"
      emp_item.name_th "Phuket"
      emp_item.name_en "Phuket"
      emp_item.original_id ''
      emp_item.country_original_id 'th'
      emp_item.url_safe 'phuket'
    end

    province.trait :country_original_id do |emp_item|
      emp_item.name_ja "プーケット"
      emp_item.name_th "Phuket"
      emp_item.name_en "Phuket"
      emp_item.original_id 'phuket'
      emp_item.country_original_id ''
      emp_item.url_safe 'phuket'
    end

    province.trait :url_safe do |emp_item|
      emp_item.name_ja "プーケット"
      emp_item.name_th "Phuket"
      emp_item.name_en "Phuket"
      emp_item.original_id 'phuket'
      emp_item.country_original_id 'th'
      emp_item.url_safe ''
    end
  end
end
