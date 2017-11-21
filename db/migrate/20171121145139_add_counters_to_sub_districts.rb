class AddCountersToSubDistricts < ActiveRecord::Migration
  def change
    add_column :subdistricts, :apartments_count, :integer, default: 0, null: false
    add_column :subdistricts, :lands_count, :integer, default: 0, null: false
  end
end
