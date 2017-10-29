class CreateLandOptions < ActiveRecord::Migration
  def change
    create_table :land_options do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
