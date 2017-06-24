class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :name
      t.integer :size
      t.integer :stock
      t.integer :price
      t.string :ingredient
      t.string :description
      t.string :tenant_name
      t.string :category
      t.string :keyword
      t.boolean :gender
      t.text :memo

      t.timestamps null: false
    end
  end
end
