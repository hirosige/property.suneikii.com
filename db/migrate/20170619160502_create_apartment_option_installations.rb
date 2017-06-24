class CreateApartmentOptionInstallations < ActiveRecord::Migration
  def change
    create_table :apartment_option_installations do |t|
      t.integer :apartment_id
      t.integer :apartment_option_id

      t.timestamps null: false
    end
  end
end
