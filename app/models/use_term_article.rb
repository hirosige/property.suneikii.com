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

class UseTermArticle < ActiveRecord::Base
  belongs_to :use_term
  has_many :use_term_article_details

  accepts_nested_attributes_for :use_term_article_details, allow_destroy: true
end
