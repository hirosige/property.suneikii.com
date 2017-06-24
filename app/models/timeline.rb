# == Schema Information
#
# Table name: timelines
#
#  id                  :integer          not null, primary key
#  order_id            :integer
#  user_id             :integer
#  timeline_message_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Timeline < ActiveRecord::Base
  belongs_to :order
  belongs_to :timeline_message
end
