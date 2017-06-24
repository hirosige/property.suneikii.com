# == Schema Information
#
# Table name: order_details
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#  good_id    :integer
#  qty        :integer
#  sub_total  :float(24)
#

class OrderDetail < ActiveRecord::Base
  belongs_to :order
end
