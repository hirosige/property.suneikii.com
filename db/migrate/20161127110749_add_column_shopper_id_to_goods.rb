class AddColumnShopperIdToGoods < ActiveRecord::Migration
  def change
    add_column(:goods, :shopper_id, :integer)
  end
end
