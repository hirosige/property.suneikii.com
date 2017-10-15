# == Schema Information
#
# Table name: site_inquiries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  body       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :site_inquiry do
    name "MyString"
    email "MyString"
    body "MyText"
  end
end
