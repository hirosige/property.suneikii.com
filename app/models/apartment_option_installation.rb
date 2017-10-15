# == Schema Information
#
# Table name: apartment_option_installations
#
#  id                  :integer          not null, primary key
#  apartment_id        :integer
#  apartment_option_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ApartmentOptionInstallation < ActiveRecord::Base
  belongs_to :apartment
  belongs_to :apartment_option
end
