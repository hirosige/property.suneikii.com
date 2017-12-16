# == Schema Information
#
# Table name: condo_option_installations
#
#  id              :integer          not null, primary key
#  condo_id        :integer
#  condo_option_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :condo_option_installation do
    apartment_id 1
    apartment_option_id 1
  end
end
