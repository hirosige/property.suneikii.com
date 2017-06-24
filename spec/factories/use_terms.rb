# == Schema Information
#
# Table name: use_terms
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  sub_title   :string(255)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :use_term do
    title "MyString"
    sub_title "MyString"
    description "MyText"
  end
end
