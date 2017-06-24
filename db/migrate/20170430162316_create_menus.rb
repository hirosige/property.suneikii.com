class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.string :name
      t.string :photo
      t.text :description
      t.integer :price
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
