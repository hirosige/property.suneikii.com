# == Schema Information
#
# Table name: time_tables
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  start_time    :time
#  end_time      :time
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class TimeTable < ActiveRecord::Base
  belongs_to :restaurant
end
