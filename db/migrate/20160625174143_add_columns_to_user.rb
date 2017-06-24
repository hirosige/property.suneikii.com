class AddColumnsToUser < ActiveRecord::Migration
  def up
    add_column(:users, :name_kanji, :string)
    add_column(:users, :name_kana, :string)
    add_column(:users, :birthday, :date)
    add_column(:users, :gender_id, :integer)
    add_column(:users, :zip_code, :string)
    add_column(:users, :address, :string)
    add_column(:users, :phone_number, :string)
    add_column(:users, :cell_phone_number, :string)
    add_column(:users, :blacklist_flg, :boolean)
    add_column(:users, :memo, :string)
    add_index(:users, :gender_id)
  end

  def down
    remove_column(:users, :name_kanji, :string)
    remove_column(:users, :name_kana, :string)
    remove_column(:users, :birthday, :date)
    remove_column(:users, :gender_id, :integer)
    remove_column(:users, :zip_code, :string)
    remove_column(:users, :address, :string)
    remove_column(:users, :phone_number, :string)
    remove_column(:users, :cell_phone_number, :string)
    remove_column(:users, :blacklist_flg, :boolean)
    remove_column(:users, :memo, :string)
    remove_index(:users, :gender_id)
  end
end
