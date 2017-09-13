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

require 'rails_helper'

RSpec.describe UseTerm, type: :model do

  it "can create" do
    use_term = UseTerm.new
    expect(use_term.class.to_s).to eq('UseTerm')
  end

end
