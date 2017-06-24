class CreateApartmentInfos < ActiveRecord::Migration
  def change
    create_table :apartment_infos do |t|
      t.text :remarks
      t.string :photo
      t.decimal :latitude, :precision => 16, :scale => 13
      t.decimal :longitude, :precision => 16, :scale => 13
      t.integer :floors
      t.string :made_of
      t.string :reconstructed_or_not
      t.string :renovated_or_not
      t.string :car_park_or_not
      t.string :bicycle_park_or_not
      t.string :bike_park_or_not
      t.string :can_have_pet_or_not
      t.integer :contact_span
      t.string :conditions
      t.integer :update_fee
      t.date :published_on
      t.date :updating_on
      t.string :property_status
      t.string :availability
      t.string :management_id
      t.integer :apartment_id

      t.timestamps null: false
    end
  end
end
