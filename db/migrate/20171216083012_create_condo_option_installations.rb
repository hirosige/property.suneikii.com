class CreateCondoOptionInstallations < ActiveRecord::Migration
  def change
    create_table :condo_option_installations do |t|
      t.integer :condo_id
      t.integer :condo_option_id

      t.timestamps null: false
    end
  end
end
