# == Schema Information
#
# Table name: land_options
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LandOption < ActiveRecord::Base
  has_many :land_option_installations
  has_many :lands, through: :land_option_installations
end
