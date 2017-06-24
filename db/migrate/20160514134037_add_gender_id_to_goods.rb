class AddGenderIdToGoods < ActiveRecord::Migration
  def change
    add_column(:goods, :gender_id, :integer)
    add_index(:goods, :gender_id)
  end
end
