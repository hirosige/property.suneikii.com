class CreateLandInfos < ActiveRecord::Migration
  def change
    create_table :land_infos do |t|
      t.text :remarks
      t.string :photo
      t.decimal :latitude
      t.decimal :longitude
      t.integer :corner
      t.integer :low_rise_residential_area
      t.integer :no_condition
      t.integer :ownership_or_not
      t.integer :contact_span
      t.string :conditions
      t.integer :update_fee
      t.date :published_on
      t.date :updating_on
      t.string :property_status
      t.string :availability
      t.string :management_id
      t.integer :land_id
      t.string :face_with_road
      t.string :send_back
      t.string :private_way_space
      t.string :urban_planning
      t.string :zoning
      t.string :topography
      t.string :ownership
      t.string :land_law_notification
      t.string :deal_way
      t.text :services
      t.text :etc
      t.text :school
      t.text :shopping
      t.text :facilities

      t.timestamps null: false
    end
  end
end
