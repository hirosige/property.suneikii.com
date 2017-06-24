# == Schema Information
#
# Table name: test_models
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TestModel < ActiveRecord::Base
end
