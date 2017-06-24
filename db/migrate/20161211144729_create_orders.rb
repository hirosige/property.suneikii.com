class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_id
      t.datetime :order_date
      t.integer :user_id
      t.string :payment_status
      t.string :fulfillment_status
      t.float :total_amount
      t.float :shipping_cost
      t.float :tax
      t.text :note
      t.integer :timeline_id

      t.timestamps null: false
    end
  end
end
