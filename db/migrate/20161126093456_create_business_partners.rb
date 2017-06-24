class CreateBusinessPartners < ActiveRecord::Migration
  def change
    create_table :business_partners do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.boolean :gender_id
      t.string :zip_code
      t.text :address
      t.string :tel1
      t.string :tel2
      t.text :memo
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
