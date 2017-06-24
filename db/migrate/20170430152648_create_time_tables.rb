class CreateTimeTables < ActiveRecord::Migration
  def change
    create_table :time_tables do |t|
      t.string :name
      t.time :start_time
      t.time :end_time
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
