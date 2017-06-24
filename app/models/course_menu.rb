# == Schema Information
#
# Table name: course_menus
#
#  id         :integer          not null, primary key
#  menu_id    :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CourseMenu < ActiveRecord::Base
  belongs_to :course
  belongs_to :menu
end
