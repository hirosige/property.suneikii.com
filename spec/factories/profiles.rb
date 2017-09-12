# == Schema Information
#
# Table name: profiles
#
#  id             :integer          not null, primary key
#  postal_code    :string(255)
#  address        :text(65535)
#  tel            :string(255)
#  reciever_email :string(255)
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :profile do
    postal_code "MyString"
    address "MyText"
    tel "MyString"
    reciever_email "MyString"
    user_id 1
  end
end
