class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :area_id
      t.string :name
      t.integer :rent_fee
      t.integer :security_deposit
      t.integer :deposit
      t.text :transportation
      t.integer :utility_fee
      t.integer :key_money
      t.text :address
      t.date :since_when
      t.integer :room_type_id
      t.string :space
      t.string :photo
      t.text :recommendations
      t.string :status
      t.integer :provider_id

      t.timestamps null: false
    end
  end
end
