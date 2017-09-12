class AddUrlSafeToProvince < ActiveRecord::Migration
  def change
    add_column :provinces, :url_safe, :string
  end
end
