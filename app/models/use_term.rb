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

class UseTerm < ActiveRecord::Base
  has_many :use_term_articles
  accepts_nested_attributes_for :use_term_articles, allow_destroy: true
end
