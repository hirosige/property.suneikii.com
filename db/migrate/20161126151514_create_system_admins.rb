class CreateSystemAdmins < ActiveRecord::Migration
  def change
    create_table :system_admins do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.integer :gender_id
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
