class CreateLandThumbnails < ActiveRecord::Migration
  def change
    create_table :land_thumbnails do |t|
      t.integer :land_id
      t.string :image

      t.timestamps null: false
    end
  end
end
