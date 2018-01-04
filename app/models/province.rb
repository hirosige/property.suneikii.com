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

class Province < ActiveRecord::Base
  validates :name_ja,             :presence => true
  validates :name_en,             :presence => true
  validates :name_th,             :presence => true
  validates :original_id,         :presence => true
  validates :country_original_id, :presence => true
  validates :url_safe,            :presence => true

  has_many :apartments
  has_many :lands
  has_many :districts,
           foreign_key: "province_original_id",
           primary_key: "original_id"

  belongs_to :country,
             foreign_key: "original_id",
             primary_key: "country_original_id"

  def self.init_count
    self.find_each {|province|
      self.reset_counters(province.id, :apartments)
      self.reset_counters(province.id, :lands)
    }
  end

  def self.reset_counter(ids)
    ids.each do |id|
      self.reset_counters(id, :apartments)
      self.reset_counters(id, :lands)
    end
  end

  def self.balc_find(ids)
    reset_counter(ids)
    provinces = find(ids)
    provinces
  end
end
