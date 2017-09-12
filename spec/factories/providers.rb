# == Schema Information
#
# Table name: providers
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  photo        :string(255)
#  introduction :text(65535)
#  site_url     :string(255)
#  address      :string(255)
#  tel          :string(255)
#  fax          :string(255)
#  certificate  :string(255)
#  working_time :string(255)
#  holidays     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :provider do
    name "MyString"
    photo "MyString"
    introduction "MyText"
    site_url "MyString"
    address "MyString"
    tel "MyString"
    fax "MyString"
    certificate "MyString"
    working_time "MyString"
    holidays "MyString"
  end
end
