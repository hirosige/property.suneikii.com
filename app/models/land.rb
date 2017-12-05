# == Schema Information
#
# Table name: lands
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  rent_fee          :integer
#  transportation    :text(65535)
#  address           :text(65535)
#  land_category_id  :integer
#  space             :string(255)
#  photo             :string(255)
#  recommendations   :text(65535)
#  status            :string(255)
#  provider_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  country_id        :integer
#  province_id       :integer
#  district_id       :integer
#  subdistrict_id    :integer
#  surety_company_id :integer
#  building_coverage :integer
#  floor_area_ratio  :integer
#

class Land < ActiveRecord::Base
  include AreaSearchable

  validates :name,              :presence => true
  validates :country_id,        :presence => true
  validates :province_id,       :presence => true
  validates :district_id,       :presence => true
  validates :subdistrict_id,    :presence => true
  validates :rent_fee,          :presence => true
  validates :address,           :presence => true
  validates :land_category_id,  :presence => true
  validates :space,             :presence => true


  has_one  :land_info, dependent: :destroy
  has_many :land_surroundings
  has_many :surroundings, :through => :land_surroundings

  has_many :land_option_installations, dependent: :destroy
  has_many :land_options, through: :land_option_installations
  has_many :land_thumbnails
  has_many :favorites, dependent: :destroy

  belongs_to :country, counter_cache: true
  belongs_to :province, counter_cache: true
  belongs_to :district, counter_cache: true
  belongs_to :subdistrict, counter_cache: true

  belongs_to :provider
  belongs_to :land_category

  accepts_nested_attributes_for :land_info
  accepts_nested_attributes_for :land_option_installations, allow_destroy: true
  accepts_nested_attributes_for :land_surroundings, allow_destroy: true
  accepts_nested_attributes_for :land_thumbnails
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

  def image_safe_update(land_params)

    land_params['land_thumbnails_attributes'].delete_if{|key, value|
      value.blank?
    }

    self.update(land_params)
  end
end
