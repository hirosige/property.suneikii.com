class CreateLandCategories < ActiveRecord::Migration
  def change
    create_table :land_categories do |t|
      t.string :name
      t.integer :land_id

      t.timestamps null: false
    end
  end
end
