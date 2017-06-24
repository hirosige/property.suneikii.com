class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone_number
      t.text :description
      t.text :notification
      t.integer :floor
      t.integer :chairs
      t.integer :private_room
      t.string :photo

      t.timestamps null: false
    end
  end
end
