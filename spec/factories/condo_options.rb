# == Schema Information
#
# Table name: condo_options
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :condo_option do
    name "MyString"
  end
end
