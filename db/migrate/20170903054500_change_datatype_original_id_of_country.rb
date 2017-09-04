class ChangeDatatypeOriginalIdOfCountry < ActiveRecord::Migration
  def change
    change_column :countries, :original_id, :string
  end
end
