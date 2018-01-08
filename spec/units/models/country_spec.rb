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
  before do
    @form = CountryForm.new(Country.new)
  end

  it "can create" do
    country = build(:country, :japan)
    expect(country.validate).to eq true
  end

  it "has many provinces" do
    country = build(:country_has_many, :provinces)
    expect(country.provinces.size).to eq 2
  end

  it "has many apartments" do
    country = build(:country_has_many, :apartments)
    expect(country.apartments.size).to eq 2
  end

  it "has many lands" do
    country = build(:country_has_many, :lands)
    expect(country.lands.size).to eq 2
  end

  it "has many condos" do
    country = build(:country_has_many, :condos)
    expect(country.condos.size).to eq 2
  end

  it "name_ja is required" do
    country = build(:country_empty, :name_ja)
    expect(@form.validate(country.attributes)).to eq false
  end

  it "name_th is required" do
    country = build(:country_empty, :name_en)
    expect(@form.validate(country.attributes)).to eq false
  end

  it "name_en is required" do
    country = build(:country_empty, :name_th)
    expect(@form.validate(country.attributes)).to eq false
  end

  it "original_id is required" do
    country = build(:country_empty, :original_id)
    expect(@form.validate(country.attributes)).to eq false
  end

  it "name_ja is lower than 255" do
    country = build(:country_lower, :name_ja)
    expect(@form.validate(country.attributes)).to eq false
  end

  it "name_en is lower than 255" do
    country = build(:country_lower, :name_en)
    expect(@form.validate(country.attributes)).to eq false
  end

  it "name_th is lower than 255" do
    country = build(:country_lower, :name_th)
    expect(@form.validate(country.attributes)).to eq false
  end

  it "original_id is lower than 255" do
    country = build(:country_lower, :original_id)
    expect(@form.validate(country.attributes)).to eq false
  end

  it "can init_count" do
    expect{ Country.init_count }.not_to raise_error
  end
end
