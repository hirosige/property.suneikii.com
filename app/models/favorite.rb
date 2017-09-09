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
#

class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :apartment

  validate :unique_apartment

  def unique_apartment
    if apartment_id.present? and Favorite.where(:user_id => user_id, :apartment_id => apartment_id).size > 0
      errors.add(:apartment_id, "Apartment cannot be duplicate in Favorite")
    end
  end

end
