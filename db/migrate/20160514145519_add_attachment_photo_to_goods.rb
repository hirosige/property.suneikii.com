class AddAttachmentPhotoToGoods < ActiveRecord::Migration
  def self.up
    change_table :goods do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :goods, :photo
  end
end
