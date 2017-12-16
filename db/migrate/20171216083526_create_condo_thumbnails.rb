class CreateCondoThumbnails < ActiveRecord::Migration
  def change
    create_table :condo_thumbnails do |t|
      t.integer :condo_id
      t.string :image

      t.timestamps null: false
    end
  end
end
