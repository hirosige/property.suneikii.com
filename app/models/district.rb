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

class District < ActiveRecord::Base
  has_many :apartments
  has_many :lands
  has_many :subdistricts,
           foreign_key: "district_original_id",
           primary_key: "original_id"

  belongs_to :province,
             foreign_key: "original_id",
             primary_key: "province_original_id"

  def self.init_count
    self.find_each {|district|
      self.reset_counters(district.id, :apartments)
      self.reset_counters(district.id, :lands)
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
    districts = find(ids)
    districts
  end
end
