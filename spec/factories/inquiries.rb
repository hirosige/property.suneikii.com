# == Schema Information
#
# Table name: inquiries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  message    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :inquiry do
    name "MyString"
    email "MyString"
    message "MyText"
  end

  factory :test_data do
    name "test"
    email "test"
    message "test"
  end
end
