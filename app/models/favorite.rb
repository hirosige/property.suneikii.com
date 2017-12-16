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
  belongs_to :condo

  validates :user_id, :uniqueness => { :scope => [
      :apartment_id,
      :land_id,
      :condo_id
  ] }

  state_machine :category, :initial => :none do
    state :none
    state :apartment
    state :land
    state :condo

    event :set_as_apartment do
      transition :from => :none, :to => :apartment
    end

    event :set_as_land do
      transition :from => :none, :to => :land
    end

    event :set_as_condo do
      transition :from => :none, :to => :condo
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

      if favorite.condo?
        favorites.push(
            Front::CondoDecorator.decorate(
                Condo.find(favorite.condo_id)
            )
        )
      end
    end

    favorites
  end

end
