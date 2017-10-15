# == Schema Information
#
# Table name: site_inquiries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  body       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SiteInquiry < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates_format_of :email,
    :with => /\A([0-9]+|[a-z]+|(\.|\-))+@([0-9]+|[a-z]+)+\.([0-9]+|[a-z]+)+(\.([0-9]+|[a-z]+))*\z/i
  validates :body, presence: true
end
