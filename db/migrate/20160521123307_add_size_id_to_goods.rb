class AddSizeIdToGoods < ActiveRecord::Migration
  def change
    add_column(:goods, :size_id, :integer)
    add_index(:goods, :size_id)
  end
end
