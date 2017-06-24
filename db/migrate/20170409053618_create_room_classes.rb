class CreateRoomClasses < ActiveRecord::Migration
  def change
    create_table :room_classes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
