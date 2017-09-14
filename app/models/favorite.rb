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

  validate :unique_apartment

  state_machine :category, :initial => :none do
    state :none
    state :apartment

    event :set_as_apartment do
      transition :from => :none, :to => :apartment
    end
  end

  def unique_apartment
    p user_id
    p apartment_id

    if Favorite.where(:user_id => user_id, :apartment_id => apartment_id).size > 0
      errors.add(:apartment_id, "Apartment cannot be duplicate in Favorite")
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
    end

    favorites
  end

end
