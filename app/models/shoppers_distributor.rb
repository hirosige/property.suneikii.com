# == Schema Information
#
# Table name: shoppers_distributors
#
#  id             :integer          not null, primary key
#  shopper_id     :integer
#  distributor_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ShoppersDistributor < ActiveRecord::Base
  belongs_to :shopper
  belongs_to :distributor
end
