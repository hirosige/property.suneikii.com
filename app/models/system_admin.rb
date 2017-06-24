# == Schema Information
#
# Table name: system_admins
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  birthday   :date
#  gender_id  :integer
#  zip_code   :string(255)
#  address    :text(65535)
#  tel1       :string(255)
#  tel2       :string(255)
#  memo       :text(65535)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SystemAdmin < ActiveRecord::Base
  belongs_to :gender
  belongs_to :user
end
