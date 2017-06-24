class CreateApartmentSurroundings < ActiveRecord::Migration
  def change
    create_table :apartment_surroundings do |t|
      t.integer :apartment_id
      t.integer :surrounding_id
      t.integer :distance

      t.timestamps null: false
    end
  end
end
