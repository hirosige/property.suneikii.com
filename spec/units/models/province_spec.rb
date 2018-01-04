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
#
# Indexes
#
#  index_provinces_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#

require 'rails_helper'

RSpec.describe Province, type: :model do

  it "can create" do
    province = build(:province, :bangkok)
    expect(province.validate).to eq true
  end

  it "has many districts" do
    province = build(:province_has_many, :districts)
    expect(province.districts.size).to eq 2
  end

  it "has many apartments" do
    province = build(:province_has_many, :apartments)
    expect(province.apartments.size).to eq 2
  end

  it "name_ja is required" do
    province = build(:province_empty, :name_ja)
    expect(province.validate).to eq false
  end

  it "name_th is required" do
    province = build(:province_empty, :name_th)
    expect(province.validate).to eq false
  end

  it "name_en is required" do
    province = build(:province_empty, :name_en)
    expect(province.validate).to eq false
  end

  it "original_id is required" do
    province = build(:province_empty, :original_id)
    expect(province.validate).to eq false
  end

  it "country_original_id is required" do
    province = build(:province_empty, :country_original_id)
    expect(province.validate).to eq false
  end

  it "url_safe is required" do
    province = build(:province_empty, :url_safe)
    expect(province.validate).to eq false
  end

  it "can init_count" do
    expect{ Province.init_count }.not_to raise_error
  end
end
