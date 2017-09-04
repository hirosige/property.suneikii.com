class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name_ja
      t.string :name_th
      t.string :name_en

      t.timestamps null: false
    end
  end
end
