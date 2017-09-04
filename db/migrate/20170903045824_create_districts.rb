class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name_ja
      t.string :name_th
      t.string :name_en
      t.references :province, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
