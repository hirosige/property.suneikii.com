# == Schema Information
#
# Table name: condo_thumnails
#
#  id         :integer          not null, primary key
#  condo_id   :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe CondoThumnail, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
