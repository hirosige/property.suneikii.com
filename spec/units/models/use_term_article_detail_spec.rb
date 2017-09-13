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

require 'rails_helper'

RSpec.describe UseTermArticleDetail, type: :model do

  it "can create" do
    use_term_article_detail = UseTermArticleDetail.new
    expect(use_term_article_detail.class.to_s).to eq('UseTermArticleDetail')
  end

end
