class CreateApartmentOptions < ActiveRecord::Migration
  def change
    create_table :apartment_options do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
