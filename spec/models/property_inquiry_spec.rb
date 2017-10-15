# == Schema Information
#
# Table name: property_inquiries
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  email          :string(255)
#  body           :text(65535)
#  apartment_id   :integer
#  land_id        :integer
#  condominium_id :integer
#  house_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  tel            :string(255)
#

require 'rails_helper'

RSpec.describe PropertyInquiry, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
