class CreateLandOptionInstallations < ActiveRecord::Migration
  def change
    create_table :land_option_installations do |t|
      t.integer :land_id
      t.integer :land_option_id

      t.timestamps null: false
    end
  end
end
