class AddImageToApartmentThumbnail < ActiveRecord::Migration
  def change
    add_column :apartment_thumbnails, :image, :string
  end
end
