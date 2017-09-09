class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :postal_code
      t.text :address
      t.string :tel
      t.string :reciever_email
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
