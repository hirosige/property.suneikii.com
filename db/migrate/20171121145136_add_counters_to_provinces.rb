class AddCountersToProvinces < ActiveRecord::Migration
  def change
    add_column :provinces, :apartments_count, :integer, default: 0, null: false
    add_column :provinces, :lands_count, :integer, default: 0, null: false
  end
end
