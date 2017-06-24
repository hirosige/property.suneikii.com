# == Schema Information
#
# Table name: timeline_messages
#
#  id         :integer          not null, primary key
#  message    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  posted_at  :datetime
#

class TimelineMessage < ActiveRecord::Base
  belongs_to :user
end
