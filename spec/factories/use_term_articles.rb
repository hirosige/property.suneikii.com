# == Schema Information
#
# Table name: use_term_articles
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  use_term_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :use_term_article do
    title "MyString"
    use_term_id 1
  end
end
