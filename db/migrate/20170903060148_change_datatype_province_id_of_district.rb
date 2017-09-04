class ChangeDatatypeProvinceIdOfDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :province_original_id, :string
  end
end
