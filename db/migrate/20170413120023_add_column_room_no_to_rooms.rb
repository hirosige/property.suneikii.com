class AddColumnRoomNoToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :room_number, :string
  end
end
