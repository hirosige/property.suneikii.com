# == Schema Information
#
# Table name: land_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  land_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LandCategory < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
end
