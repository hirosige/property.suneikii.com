# == Schema Information
#
# Table name: shoppers
#
#  id                  :integer          not null, primary key
#  shop_name           :string(255)
#  representative_name :string(255)
#  zip_code            :string(255)
#  address             :text(65535)
#  tel1                :string(255)
#  tel2                :string(255)
#  mail_address        :string(255)
#  shop_status_id      :integer
#  account_number      :string(255)
#  memo                :text(65535)
#  user_id             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Shopper < ActiveRecord::Base
  has_many :shoppers_distributors
  has_many :distributors, through: :shoppers_distributors
  has_many :goods
  belongs_to :shop_status
end
