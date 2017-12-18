# == Schema Information
#
# Table name: apartment_option_installations
#
#  id                  :integer          not null, primary key
#  apartment_id        :integer
#  apartment_option_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

FactoryBot.define do
  factory :apartment_option_installation do
    apartment_id 1
    apartment_option_id 1
  end
end
