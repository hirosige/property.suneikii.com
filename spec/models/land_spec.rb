# == Schema Information
#
# Table name: lands
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  rent_fee          :integer
#  transportation    :text(65535)
#  address           :text(65535)
#  land_category_id  :integer
#  space             :string(255)
#  photo             :string(255)
#  recommendations   :text(65535)
#  status            :string(255)
#  provider_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  country_id        :integer
#  province_id       :integer
#  district_id       :integer
#  subdistrict_id    :integer
#  surety_company_id :integer
#  building_coverage :integer
#  floor_area_ratio  :integer
#

require 'rails_helper'

RSpec.describe Land, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
