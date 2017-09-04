class ChangeDatatypeCountryIdOfProvince < ActiveRecord::Migration
  def change
    add_column :provinces, :country_original_id, :string
  end
end
