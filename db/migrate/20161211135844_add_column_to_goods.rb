class AddColumnToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :status, :string
  end
end
