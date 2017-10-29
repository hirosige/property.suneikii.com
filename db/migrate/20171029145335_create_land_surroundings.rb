class CreateLandSurroundings < ActiveRecord::Migration
  def change
    create_table :land_surroundings do |t|
      t.integer :land_id
      t.integer :surrounding_id
      t.integer :distance

      t.timestamps null: false
    end
  end
end
