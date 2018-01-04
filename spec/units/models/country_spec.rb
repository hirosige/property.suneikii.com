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

require 'rails_helper'

RSpec.describe Country, type: :model do

  it "can create" do
    country = build(:country, :japan)
    expect(country.validate).to eq true
  end

  it "has many provinces" do
    country = build(:country_has_many, :provinces)
    expect(country.provinces.size).to eq 2
  end

  it "name_ja is required" do
    country = build(:country_empty, :name_ja)
    expect(country.validate).to eq false
  end

  it "name_th is required" do
    country = build(:country_empty, :name_en)
    expect(country.validate).to eq false
  end

  it "name_en is required" do
    country = build(:country_empty, :name_th)
    expect(country.validate).to eq false
  end

  it "original_id is required" do
    country = build(:country_empty, :original_id)
    expect(country.validate).to eq false
  end

  it "can init_count" do
    expect{ Country.init_count }.not_to raise_error
  end
end
