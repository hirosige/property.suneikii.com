class AddImageToRoomClass < ActiveRecord::Migration
  def change
    add_column :room_classes, :image, :string
  end
end
