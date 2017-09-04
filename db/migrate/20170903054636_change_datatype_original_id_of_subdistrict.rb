class ChangeDatatypeOriginalIdOfSubdistrict < ActiveRecord::Migration
  def change
    change_column :subdistricts, :original_id, :string
  end
end
