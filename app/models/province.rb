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
  has_many :districts,
           foreign_key: "province_original_id",
           primary_key: "original_id"

  belongs_to :country,
             foreign_key: "original_id",
             primary_key: "country_original_id"
end