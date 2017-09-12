class AddUrlSafeToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :url_safe, :string
  end
end
