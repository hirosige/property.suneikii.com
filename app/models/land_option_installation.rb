# == Schema Information
#
# Table name: land_option_installations
#
#  id             :integer          not null, primary key
#  land_id        :integer
#  land_option_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class LandOptionInstallation < ActiveRecord::Base
  belongs_to :land
  belongs_to :land_option
end
