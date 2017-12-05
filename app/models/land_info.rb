# == Schema Information
#
# Table name: land_infos
#
#  id                        :integer          not null, primary key
#  remarks                   :text(65535)
#  photo                     :string(255)
#  latitude                  :decimal(16, 13)
#  longitude                 :decimal(16, 13)
#  corner                    :integer
#  low_rise_residential_area :integer
#  no_condition              :integer
#  ownership_or_not          :integer
#  contact_span              :integer
#  conditions                :string(255)
#  update_fee                :integer
#  published_on              :date
#  updating_on               :date
#  property_status           :string(255)
#  availability              :string(255)
#  management_id             :string(255)
#  land_id                   :integer
#  face_with_road            :string(255)
#  send_back                 :string(255)
#  private_way_space         :string(255)
#  urban_planning            :string(255)
#  zoning                    :string(255)
#  topography                :string(255)
#  ownership                 :string(255)
#  land_law_notification     :string(255)
#  deal_way                  :string(255)
#  services                  :text(65535)
#  etc                       :text(65535)
#  school                    :text(65535)
#  shopping                  :text(65535)
#  facilities                :text(65535)
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class LandInfo < ActiveRecord::Base
  validates :latitude,                   presence: true
  validates :longitude,                  presence: true
  validates :corner,                     presence: true
  validates :low_rise_residential_area,  presence: true
  validates :no_condition,               presence: true
  validates :ownership_or_not,           presence: true
  validates :contact_span,               presence: true
  validates :update_fee,                 presence: true
  validates :services,                   presence: true

  belongs_to :land

  scope :available, -> { where(availability: :now_available) }
  scope :vacant,    -> { where(property_status: :vacant) }

  enum corner: {
       corner: 10,
       not_corner: 20
  }

  enum low_rise_residential_area: {
      low_rise_residential_area: 10,
      not_low_rise_residential_area: 20
  }

  enum no_condition: {
      no_condition: 10,
      conditional: 20
  }

  enum ownership_or_not: {
      ownership: 10,
      no_ownership: 20
  }

  state_machine :property_status, :initial => :vacant do
    state :vacant
    state :leave_planned

    event :clean do
      transition :from => [:leave_planned], :to => [:vacant]
    end

    event :occupy do
      transition :from => [:vacant], :to => [:leave_planned]
    end
  end

  state_machine :availability, :initial=> :preparing do
    state :preparing
    state :now_available

    event :enable do
      transition :from => [:preparing], :to => [:now_available]
    end

    event :disable do
      transition :from => [:now_available], :to => [:preparing]
    end
  end

end
