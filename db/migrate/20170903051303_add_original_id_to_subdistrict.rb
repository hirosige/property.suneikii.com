class AddOriginalIdToSubdistrict < ActiveRecord::Migration
  def change
    add_column :subdistricts, :original_id, :integer
  end
end
