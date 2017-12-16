class CreateCondoOptions < ActiveRecord::Migration
  def change
    create_table :condo_options do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
