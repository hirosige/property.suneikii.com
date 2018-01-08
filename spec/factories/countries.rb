# == Schema Information
#
# Table name: countries
#
#  id               :integer          not null, primary key
#  name_ja          :string(255)
#  name_th          :string(255)
#  name_en          :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  original_id      :string(255)
#  apartments_count :integer          default(0), not null
#  lands_count      :integer          default(0), not null
#  condos_count     :integer          default(0), not null
#

FactoryBot.define do

  # valid data
  factory :country, class: Country do |country|
    country.trait :japan do |item|
      item.name_ja "日本"
      item.name_th "yipun"
      item.name_en "Japan"
      item.original_id "ja"
    end

    country.trait :thailand do |item|
      item.name_ja "タイ"
      item.name_th "thai"
      item.name_en "Thai"
      item.original_id "th"
    end
  end

  # data has many children
  factory :country_has_many, class: Country do |country|
    country.name_ja "タイ"
    country.name_th "thai"
    country.name_en "Thai"
    country.original_id "th"

    country.trait :provinces do |item|
      item.provinces do
        [
            FactoryBot.create(:province, :bangkok),
            FactoryBot.create(:province, :phuket)
        ]
      end
    end

    country.trait :apartments do |item|
      item.apartments do
        [
            FactoryBot.create(:apartment, :a),
            FactoryBot.create(:apartment, :b)
        ]
      end
    end

    country.trait :lands do |item|
      item.lands do
        [
            FactoryBot.create(:land, :a),
            FactoryBot.create(:land, :b)
        ]
      end
    end

    country.trait :condos do |item|
      item.condos do
        [
            FactoryBot.create(:condo, :a),
            FactoryBot.create(:condo, :b)
        ]
      end
    end
  end

  # data has empty data
  factory :country_empty, class: Country do |country|

    country.trait :name_ja do |emp_item|
      emp_item.name_ja ''
      emp_item.name_th 'thai'
      emp_item.name_en 'Thai'
      emp_item.original_id "th"
    end

    country.trait :name_en do |emp_item|
      emp_item.name_ja 'タイ'
      emp_item.name_th ''
      emp_item.name_en 'Thai'
      emp_item.original_id "th"
    end

    country.trait :name_th do |emp_item|
      emp_item.name_ja 'タイ'
      emp_item.name_th 'thai'
      emp_item.name_en ''
      emp_item.original_id "th"
    end

    country.trait :original_id do |emp_item|
      emp_item.name_ja 'タイ'
      emp_item.name_th 'thai'
      emp_item.name_en 'Thai'
      emp_item.original_id ""
    end
  end

  # data has empty data
  factory :country_lower, class: Country do |country|

    country.trait :name_ja do |emp_item|
      emp_item.name_ja 'a' * 256
      emp_item.name_th 'thai'
      emp_item.name_en 'Thai'
      emp_item.original_id "th"
    end

    country.trait :name_en do |emp_item|
      emp_item.name_ja 'タイ'
      emp_item.name_th 'a' * 256
      emp_item.name_en 'Thai'
      emp_item.original_id "th"
    end

    country.trait :name_th do |emp_item|
      emp_item.name_ja 'タイ'
      emp_item.name_th 'thai'
      emp_item.name_en 'a' * 256
      emp_item.original_id "th"
    end

    country.trait :original_id do |emp_item|
      emp_item.name_ja 'タイ'
      emp_item.name_th 'thai'
      emp_item.name_en 'Thai'
      emp_item.original_id 'a' * 256
    end
  end
end
