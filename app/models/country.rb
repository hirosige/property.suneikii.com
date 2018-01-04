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

class Country < ActiveRecord::Base
  validates :name_ja,     :presence => true
  validates :name_th,     :presence => true
  validates :name_en,     :presence => true
  validates :original_id, :presence => true

  has_many :apartments
  has_many :lands

  has_many :provinces,
           foreign_key: "country_original_id",
           primary_key: "original_id"

  def self.init_count
    self.find_each { |country| self.reset_counters(country.id, :apartments) }
    self.find_each { |country| self.reset_counters(country.id, :lands) }
  end
end
