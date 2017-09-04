class ChangeDatatypeOriginalIdOfDistrict < ActiveRecord::Migration
  def change
    change_column :districts, :original_id, :string
  end
end
