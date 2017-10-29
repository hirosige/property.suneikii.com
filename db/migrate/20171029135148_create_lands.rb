class CreateLands < ActiveRecord::Migration
  def change
    create_table :lands do |t|
      t.string :name
      t.integer :rent_fee
      t.text :transportation
      t.text :address
      t.integer :land_category_id
      t.string :space
      t.string :photo
      t.text :recommendations
      t.string :status
      t.integer :provider_id
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :country_id
      t.integer :province_id
      t.integer :district_id
      t.integer :subdistrict_id
      t.integer :surety_company_id
      t.integer :building_coverage
      t.integer :floor_area_ratio

      t.timestamps null: false
    end
  end
end
