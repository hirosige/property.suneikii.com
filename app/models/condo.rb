# == Schema Information
#
# Table name: condos
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  rent_fee          :integer
#  security_deposit  :integer
#  deposit           :integer
#  transportation    :text(65535)
#  utility_fee       :integer
#  key_money         :integer
#  address           :text(65535)
#  since_when        :date
#  room_type_id      :integer
#  space             :string(255)
#  photo             :string(255)
#  recommendations   :text(65535)
#  status            :string(255)
#  provider_id       :integer
#  country_id        :integer
#  province_id       :integer
#  district_id       :integer
#  subdistrict_id    :integer
#  surety_company_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Condo < ActiveRecord::Base
  include AreaSearchable

  validates :name,           :presence => true
  validates :country_id,     :presence => true
  validates :province_id,    :presence => true
  validates :district_id,    :presence => true
  validates :subdistrict_id, :presence => true
  validates :rent_fee,       :presence => true
  validates :address,        :presence => true
  validates :room_type_id,   :presence => true
  validates :space,          :presence => true


  has_one :condo_info, dependent: :destroy
  has_many :condo_surroundings
  has_many :surroundings, :through => :condo_surroundings

  has_many :condo_option_installations, dependent: :destroy
  has_many :condo_options, through: :condo_option_installations
  has_many :condo_thumbnails
  has_many :favorites, dependent: :destroy

  belongs_to :country, counter_cache: true
  belongs_to :province, counter_cache: true
  belongs_to :district, counter_cache: true
  belongs_to :subdistrict, counter_cache: true

  belongs_to :provider
  belongs_to :room_type

  accepts_nested_attributes_for :condo_info, allow_destroy: true
  accepts_nested_attributes_for :condo_option_installations, allow_destroy: true
  accepts_nested_attributes_for :condo_surroundings, allow_destroy: true
  accepts_nested_attributes_for :condo_thumbnails, allow_destroy: true
  mount_uploader :photo, ApartmentPhotoUploader

  scope :published, -> { where(status: :public)}
  scope :count_all, -> { all.count }

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

  def image_safe_update(condo_params)

    condo_params['condo_thumbnails_attributes'].delete_if{|key, value|
      value.blank?
    } unless condo_params['condo_thumbnails_attributes'].nil?

    self.update(condo_params)
  end
end
