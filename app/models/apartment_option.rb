# == Schema Information
#
# Table name: apartment_options
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ApartmentOption < ActiveRecord::Base
  has_many :apartment_option_installations
  has_many :apartments, through: :apartment_option_installations
end
