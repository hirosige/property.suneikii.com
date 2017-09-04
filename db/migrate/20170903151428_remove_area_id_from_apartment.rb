class RemoveAreaIdFromApartment < ActiveRecord::Migration
  def change
    remove_column :apartments, :area_id, :integer
  end
end
