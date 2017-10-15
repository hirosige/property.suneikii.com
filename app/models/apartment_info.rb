# == Schema Information
#
# Table name: apartment_infos
#
#  id                   :integer          not null, primary key
#  remarks              :text(65535)
#  photo                :string(255)
#  latitude             :decimal(16, 13)
#  longitude            :decimal(16, 13)
#  floors               :integer
#  made_of              :string(255)
#  reconstructed_or_not :integer
#  renovated_or_not     :integer
#  car_park_or_not      :integer
#  bicycle_park_or_not  :integer
#  bike_park_or_not     :integer
#  can_have_pet_or_not  :integer
#  contact_span         :integer
#  conditions           :string(255)
#  update_fee           :integer
#  published_on         :date
#  updating_on          :date
#  property_status      :string(255)
#  availability         :string(255)
#  management_id        :string(255)
#  apartment_id         :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  floor                :integer
#  brandnew             :integer
#  more_than_2floors    :integer
#  light_on_south       :integer
#  parkinglot           :integer
#  auto_lock            :integer
#  air_con              :integer
#  separate_bath_toilet :integer
#  reheating            :integer
#  wooden_floor         :integer
#  pet                  :integer
#  number_of_rooms      :integer
#  house_insurance      :string(255)
#  deal_way             :string(255)
#  kitchen_bath         :text(65535)
#  services             :text(65535)
#  etc                  :text(65535)
#  balcony_space        :integer
#  light_direction      :string(255)
#

class ApartmentInfo < ActiveRecord::Base
  validates :latitude,              presence: true
  validates :longitude,             presence: true
  validates :brandnew,              presence: true
  validates :more_than_2floors,     presence: true
  validates :light_on_south,        presence: true
  validates :parkinglot,            presence: true
  validates :auto_lock,             presence: true
  validates :air_con,               presence: true
  validates :separate_bath_toilet,  presence: true
  validates :reheating,             presence: true
  validates :wooden_floor,          presence: true
  validates :pet,                   presence: true
  validates :floor,                 presence: true
  validates :floors,                presence: true
  validates :light_direction,       presence: true
  validates :contact_span,          presence: true
  validates :update_fee,            presence: true
  validates :number_of_rooms,       presence: true
  validates :kitchen_bath,          presence: true
  validates :services,              presence: true


  belongs_to :apartment

  scope :available, -> { where(availability: :now_available) }
  scope :vacant,    -> { where(property_status: :vacant) }

  enum brandnew: {
      brandnew: 10,
      old: 20
  }

  enum more_than_2floors: {
      more: 10,
      only_one: 20
  }

  enum light_on_south: {
      south: 10,
      other: 20
  }

  enum parkinglot: {
      have_park: 10,
      not_have_park: 20
  }

  enum auto_lock: {
      have_auto_lock: 10,
      not_have_auto_lock: 20
  }

  enum air_con: {
      have_air_con: 10,
      not_have_air_con: 20
  }

  enum separate_bath_toilet: {
      separated_bath_toilet: 10,
      united_bath_toilet: 20
  }

  enum reheating: {
      have_reheating: 10,
      not_have_reheating: 20
  }

  enum wooden_floor: {
      have_wooden_floor: 10,
      not_have_wooden_floor: 20
  }

  enum pet: {
      have_pet: 10,
      not_have_pet: 20
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
