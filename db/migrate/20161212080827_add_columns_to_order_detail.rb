class AddColumnsToOrderDetail < ActiveRecord::Migration
  def change
    add_column :order_details, :good_id, :integer
    add_column :order_details, :qty, :integer
    add_column :order_details, :sub_total, :float
  end
end
