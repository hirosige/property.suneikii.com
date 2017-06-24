class AddColorIdToGoods < ActiveRecord::Migration
  def change
    add_column(:goods, :color_id, :integer)
    add_index(:goods, :color_id)
  end
end
