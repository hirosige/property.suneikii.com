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

require 'rails_helper'

RSpec.describe UseTermArticle, type: :model do

  it "can create" do
    use_term_article = UseTermArticle.new
    expect(use_term_article.class.to_s).to eq('UseTermArticle')
  end

end
