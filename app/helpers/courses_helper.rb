# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  photo         :string(255)
#  start_date    :date
#  end_date      :date
#  start_time    :time
#  end_time      :time
#  price         :integer
#  list          :text(65535)
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

module CoursesHelper
end
