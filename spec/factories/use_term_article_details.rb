# == Schema Information
#
# Table name: use_term_article_details
#
#  id                  :integer          not null, primary key
#  description         :text(65535)
#  use_term_article_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

FactoryBot.define do
  factory :use_term_article_detail do
    description "MyText"
    use_term_article_id 1
  end
end
