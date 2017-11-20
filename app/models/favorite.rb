# == Schema Information
#
# Table name: favorites
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  apartment_id :integer
#  land_id      :integer
#  condo_id     :integer
#  house_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category     :string(255)
#

class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :apartment
  belongs_to :land

  validate :unique_apartment
  validate :unique_land

  state_machine :category, :initial => :none do
    state :none
    state :apartment
    state :land

    event :set_as_apartment do
      transition :from => :none, :to => :apartment
    end

    event :set_as_land do
      transition :from => :none, :to => :land
    end
  end

  def unique_apartment
    if Favorite.where(:user_id => user_id, :apartment_id => apartment_id).size > 0
      errors.add(:apartment_id, "Apartment cannot be duplicate in Favorite")
    end
  end

  def unique_land
    if Favorite.where(:user_id => user_id, :land_id => land_id).size > 0
      errors.add(:land_id, "Land cannot be duplicate in Favorite")
    end
  end

  def self.personal_favorites(user_id)
    favorites = Array.new

    where(user_id: user_id).each do |favorite|
      if favorite.apartment?
        favorites.push(
            Front::ApartmentDecorator.decorate(
                Apartment.find(favorite.apartment_id)
            )
        )
      end

      if favorite.land?
        favorites.push(
            Front::LandDecorator.decorate(
                Land.find(favorite.land_id)
            )
        )
      end
    end

    favorites
  end

end
