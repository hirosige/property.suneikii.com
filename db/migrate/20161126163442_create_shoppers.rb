class CreateShoppers < ActiveRecord::Migration
  def change
    create_table :shoppers do |t|
      t.string :shop_name
      t.string :representative_name
      t.string :zip_code
      t.text :address
      t.string :tel1
      t.string :tel2
      t.string :mail_address
      t.integer :shop_status_id
      t.string :account_number
      t.text :memo
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
