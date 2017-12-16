class CreateCondoSurroundings < ActiveRecord::Migration
  def change
    create_table :condo_surroundings do |t|
      t.integer :condo_id
      t.integer :surrounding_id
      t.integer :distance

      t.timestamps null: false
    end
  end
end
