class CreateShopStatuses < ActiveRecord::Migration
  def change
    create_table :shop_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
