# == Schema Information
#
# Table name: condos
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  rent_fee          :integer
#  security_deposit  :integer
#  deposit           :integer
#  transportation    :text(65535)
#  utility_fee       :integer
#  key_money         :integer
#  address           :text(65535)
#  since_when        :date
#  room_type_id      :integer
#  space             :string(255)
#  photo             :string(255)
#  recommendations   :text(65535)
#  status            :string(255)
#  provider_id       :integer
#  country_id        :integer
#  province_id       :integer
#  district_id       :integer
#  subdistrict_id    :integer
#  surety_company_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Condo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
