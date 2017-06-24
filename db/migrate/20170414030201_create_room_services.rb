class CreateRoomServices < ActiveRecord::Migration
  def change
    create_table :room_services do |t|
      t.integer :room_class_id
      t.integer :service_id

      t.timestamps null: false
    end
  end
end
