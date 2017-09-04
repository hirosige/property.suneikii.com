class AddOriginalIdToProvince < ActiveRecord::Migration
  def change
    add_column :provinces, :original_id, :integer
  end
end
