class RemovesColumnsFromUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :admin
    remove_column :users, :name_kanji
    remove_column :users, :name_kana
    remove_column :users, :birthday
    remove_column :users, :gender_id
    remove_column :users, :zip_code
    remove_column :users, :address
    remove_column :users, :phone_number
    remove_column :users, :cell_phone_number
    remove_column :users, :memo
  end

  def self.down
    add_column :users, :admin, :string
    add_column :users, :name_kanji, :string
    add_column :users, :name_kana, :string
    add_column :users, :birthday, :date
    add_column :users, :gender_id, :integer
    add_column :users, :zip_code, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
    add_column :users, :cell_phone_number, :string
    add_column :users, :memo, :text
  end
end
