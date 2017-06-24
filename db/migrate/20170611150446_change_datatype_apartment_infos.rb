class ChangeDatatypeApartmentInfos < ActiveRecord::Migration
  def change
    change_column :apartment_infos, :reconstructed_or_not, :integer
    change_column :apartment_infos, :renovated_or_not, :integer
    change_column :apartment_infos, :car_park_or_not, :integer
    change_column :apartment_infos, :bicycle_park_or_not, :integer
    change_column :apartment_infos, :bike_park_or_not, :integer
    change_column :apartment_infos, :can_have_pet_or_not, :integer
  end
end
