# == Schema Information
#
# Table name: apartments
#
#  id               :integer          not null, primary key
#  area_id          :integer
#  name             :string(255)
#  rent_fee         :integer
#  security_deposit :integer
#  deposit          :integer
#  transportation   :text(65535)
#  utility_fee      :integer
#  key_money        :integer
#  address          :text(65535)
#  since_when       :date
#  room_type_id     :integer
#  space            :string(255)
#  photo            :string(255)
#  recommendations  :text(65535)
#  status           :string(255)
#  provider_id      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Apartment < ActiveRecord::Base
  has_one :apartment_info
  has_many :apartment_surroundings
  has_many :surroundings, :through => :apartment_surroundings

  has_many :apartment_option_installations, dependent: :destroy
  has_many :apartment_options, through: :apartment_option_installations

  accepts_nested_attributes_for :apartment_info
  accepts_nested_attributes_for :apartment_option_installations, allow_destroy: true
  accepts_nested_attributes_for :apartment_surroundings, allow_destroy: true
  mount_uploader :photo, ImageUploader

  scope :published, -> { where(status: :public)}

  state_machine :status, :initial => :secret do
    state :secret
    state :private
    state :public

    event :publish do
      transition :from => [:secret, :private], :to => :public
    end

    event :decline do
      transition :from => [:public], :to => :secret
    end
  end

end
