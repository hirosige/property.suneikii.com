class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :room_class_id
      t.text :description
      t.text :sales_description
      t.string :area
      t.integer :price
      t.integer :qty
      t.string :checkin_time
      t.string :checkout_time
      t.integer :how_many_ppl

      t.timestamps null: false
    end
  end
end
