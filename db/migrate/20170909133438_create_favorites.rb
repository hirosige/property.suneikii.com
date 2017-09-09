class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :apartment_id
      t.integer :land_id
      t.integer :condo_id
      t.integer :house_id

      t.timestamps null: false
    end
  end
end
