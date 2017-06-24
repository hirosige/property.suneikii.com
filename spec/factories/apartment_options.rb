# == Schema Information
#
# Table name: apartment_options
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :apartment_option do
    name "MyString"
  end
end
