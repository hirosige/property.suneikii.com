# == Schema Information
#
# Table name: condo_options
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CondoOption < ActiveRecord::Base
  has_many :condo_option_installations
  has_many :condos, through: :condo_option_installations
end
