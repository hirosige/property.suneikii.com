# == Schema Information
#
# Table name: land_options
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :land_option do
    name "MyString"
  end
end
