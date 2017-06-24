class CreateRoomAccessories < ActiveRecord::Migration
  def change
    create_table :room_accessories do |t|
      t.integer :room_class_id
      t.integer :accessory_id

      t.timestamps null: false
    end
  end
end
