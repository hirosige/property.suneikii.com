class AddCountersToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :apartments_count, :integer, default: 0, null: false
    add_column :countries, :lands_count, :integer, default: 0, null: false
    add_column :countries, :condos_count, :integer, default: 0, null: false
  end
end
