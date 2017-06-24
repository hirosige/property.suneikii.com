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
#

class ApartmentInfo < ActiveRecord::Base
  belongs_to :apartment

  enum reconstructed_or_not: {
      reconstructed:     10,
      not_reconstructed: 20
  }

  enum renovated_or_not:     {
      renovated:     10,
      not_renovated: 20
  }

  enum car_park_or_not:      {
      can_park_car:    10,
      cannot_park_car: 20
  }

  enum bicycle_park_or_not:  {
      can_park_bicycle: 10,
      cannot_park_bicycle: 20
  }

  enum bike_park_or_not:     {
      can_park_bike: 10,
      cannot_park_bike: 20
  }

  enum can_have_pet_or_not:  {
      can_have_pet: 10,
      cannot_have_pet: 20
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
