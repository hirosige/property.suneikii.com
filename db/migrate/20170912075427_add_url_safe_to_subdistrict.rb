class AddUrlSafeToSubdistrict < ActiveRecord::Migration
  def change
    add_column :subdistricts, :url_safe, :string
  end
end
