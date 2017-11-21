class AddCountersToDistricts < ActiveRecord::Migration
  def change
    add_column :districts, :apartments_count, :integer, default: 0, null: false
    add_column :districts, :lands_count, :integer, default: 0, null: false
  end
end
