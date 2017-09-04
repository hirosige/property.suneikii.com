class AddIdsToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :country_id, :integer
    add_column :apartments, :province_id, :integer
    add_column :apartments, :district_id, :integer
    add_column :apartments, :subdistrict_id, :integer
  end
end
