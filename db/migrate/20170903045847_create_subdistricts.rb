class CreateSubdistricts < ActiveRecord::Migration
  def change
    create_table :subdistricts do |t|
      t.string :name_ja
      t.string :name_th
      t.string :name_en
      t.references :district, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
