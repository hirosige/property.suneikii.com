# == Schema Information
#
# Table name: rooms
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  room_class_id     :integer
#  description       :text(65535)
#  sales_description :text(65535)
#  area              :string(255)
#  price             :integer
#  qty               :integer
#  checkin_time      :string(255)
#  checkout_time     :string(255)
#  how_many_ppl      :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  room_number       :string(255)
#

class Room < ActiveRecord::Base
  belongs_to :room_class
end
