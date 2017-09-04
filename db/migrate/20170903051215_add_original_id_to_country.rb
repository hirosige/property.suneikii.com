class AddOriginalIdToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :original_id, :integer
  end
end
