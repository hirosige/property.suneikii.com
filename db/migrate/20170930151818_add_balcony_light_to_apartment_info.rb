class AddBalconyLightToApartmentInfo < ActiveRecord::Migration
  def change
    add_column :apartment_infos, :balcony_space, :integer
    add_column :apartment_infos, :light_direction, :string
  end
end
