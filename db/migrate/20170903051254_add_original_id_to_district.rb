class AddOriginalIdToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :original_id, :integer
  end
end
