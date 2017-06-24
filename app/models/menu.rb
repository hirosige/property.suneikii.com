# == Schema Information
#
# Table name: menus
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  name          :string(255)
#  photo         :string(255)
#  description   :text(65535)
#  price         :integer
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Menu < ActiveRecord::Base
  has_many   :courses, through: :course_menus
  has_many   :course_menus
  belongs_to :restaurants
end
