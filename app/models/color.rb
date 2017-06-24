# == Schema Information
#
# Table name: colors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Color < ActiveRecord::Base
  has_many :goods

  validates :name, presence: true
  validates :name, :length => { :maximum => 100 }
end
