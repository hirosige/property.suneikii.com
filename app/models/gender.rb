# == Schema Information
#
# Table name: genders
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gender < ActiveRecord::Base
  has_many :goods

  validates :name, presence: true
end
