# == Schema Information
#
# Table name: land_option_installations
#
#  id             :integer          not null, primary key
#  land_id        :integer
#  land_option_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :land_option_installation do
    land_id 1
    land_option_id 1
  end
end
