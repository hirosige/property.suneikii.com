class CreateApartmentThumbnails < ActiveRecord::Migration
  def change
    create_table :apartment_thumbnails do |t|
      t.references :apartment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
