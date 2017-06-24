class AddGoodsCategoryIdToGoods < ActiveRecord::Migration
  def change
    add_column(:goods, :goods_category_id, :integer)
    add_index(:goods, :goods_category_id)
  end
end
