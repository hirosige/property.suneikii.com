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

class CondoOptionInstallation < ActiveRecord::Base
  belongs_to :condo
  belongs_to :condo_option
end
