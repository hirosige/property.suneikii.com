# == Schema Information
#
# Table name: orders
#
#  id                 :integer          not null, primary key
#  order_date         :datetime
#  user_id            :integer
#  payment_status     :string(255)
#  fulfillment_status :string(255)
#  total_amount       :float(24)
#  shipping_cost      :float(24)
#  tax                :float(24)
#  note               :text(65535)
#  timeline_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Order < ActiveRecord::Base
  has_many :order_details, dependent: :destroy
  has_many :timeline_messages, through: :timelines
  has_many :timelines
  belongs_to :user

  acts_as_ordered_taggable_on :kinds

  accepts_nested_attributes_for :order_details,
                                reject_if: :all_blank,
                                allow_destroy: true

  state_machine :payment_status, :initial => :pending do
    state :pending
    state :paid
    state :refunded

    event :pay do
      transition :from => :pending, :to => :paid
    end

    event :refund do
      transition :from => :paid, :to => :refunded
    end
  end

  state_machine :fulfillment_status, :initial => :unfulfilled do
    state :unfulfilled
    state :fulfilled

    event :fulfill do
      transition :from => :unfulfilled, :to => :fulfilled
    end

    event :cancel do
      transition :from => :fulfilled, :to => :unfulfilled
    end
  end
end
