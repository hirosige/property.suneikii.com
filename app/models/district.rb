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
  has_many :subdistricts,
           foreign_key: "district_original_id",
           primary_key: "original_id"

  belongs_to :province,
             foreign_key: "original_id",
             primary_key: "province_original_id"

  def self.balc_find(ids)
    find(ids)
  end
end
