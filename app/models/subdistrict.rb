# == Schema Information
#
# Table name: subdistricts
#
#  id                   :integer          not null, primary key
#  name_ja              :string(255)
#  name_th              :string(255)
#  name_en              :string(255)
#  district_id          :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  original_id          :string(255)
#  district_original_id :string(255)
#  url_safe             :string(255)
#
# Indexes
#
#  index_subdistricts_on_district_id  (district_id)
#
# Foreign Keys
#
#  fk_rails_...  (district_id => districts.id)
#

class Subdistrict < ActiveRecord::Base
  belongs_to :district,
             foreign_key: "original_id",
             primary_key: "district_original_id"
end
