class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name_ja
      t.string :name_th
      t.string :name_en
      t.references :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
