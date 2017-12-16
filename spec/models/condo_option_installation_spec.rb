# == Schema Information
#
# Table name: condo_option_installations
#
#  id              :integer          not null, primary key
#  condo_id        :integer
#  condo_option_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe CondoOptionInstallation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
