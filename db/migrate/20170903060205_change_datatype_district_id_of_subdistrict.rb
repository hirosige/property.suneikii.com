class ChangeDatatypeDistrictIdOfSubdistrict < ActiveRecord::Migration
  def change
    add_column :subdistricts, :district_original_id, :string
  end
end
