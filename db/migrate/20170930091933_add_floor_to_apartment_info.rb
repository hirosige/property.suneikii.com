class AddFloorToApartmentInfo < ActiveRecord::Migration
  def change
    add_column :apartment_infos, :floor, :integer
  end
end
