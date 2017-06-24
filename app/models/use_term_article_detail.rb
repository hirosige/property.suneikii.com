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

class UseTermArticleDetail < ActiveRecord::Base
  belongs_to :use_term_article
end
