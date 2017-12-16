class CreateCondoInfos < ActiveRecord::Migration
  def change
    create_table :condo_infos do |t|
      t.text :remarks
      t.string :photo
      t.decimal :latitude, :precision => 16, :scale => 13
      t.decimal :longitude, :precision => 16, :scale => 13
      t.integer :floors
      t.string :made_of
      t.integer :reconstructed_or_not
      t.integer :renovated_or_not
      t.integer :car_park_or_not
      t.integer :bicycle_park_or_not
      t.integer :bike_park_or_not
      t.integer :can_have_pet_or_not
      t.integer :contact_span
      t.string :conditions
      t.integer :update_fee
      t.date :published_on
      t.date :updating_on
      t.string :property_status
      t.string :availability
      t.string :management_id
      t.integer :apartment_id
      t.integer :floor
      t.integer :brandnew
      t.integer :more_than_2floors
      t.integer :light_on_south
      t.integer :parkinglot
      t.integer :auto_lock
      t.integer :air_con
      t.integer :separate_bath_toilet
      t.integer :reheating
      t.integer :wooden_floor
      t.integer :pet
      t.integer :number_of_rooms
      t.string :house_insurance
      t.string :deal_way
      t.text :kitchen_bath
      t.text :services
      t.text :etc
      t.integer :balcony_space
      t.string :light_direction

      t.timestamps null: false
    end
  end
end
