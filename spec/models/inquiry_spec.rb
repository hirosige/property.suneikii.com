# == Schema Information
#
# Table name: inquiries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  message    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Inquiry, type: :model do

  it "can create" do
    inquiry = Inquiry.new
    expect(inquiry.class.to_s).to eq('Inquiry')
  end

end
