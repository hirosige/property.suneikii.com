class ChangeDatatypeOriginalIdOfProvince < ActiveRecord::Migration
  def change
    change_column :provinces, :original_id, :string
  end
end
