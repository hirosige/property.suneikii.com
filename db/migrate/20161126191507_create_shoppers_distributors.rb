class CreateShoppersDistributors < ActiveRecord::Migration
  def change
    create_table :shoppers_distributors do |t|
      t.integer :shopper_id
      t.integer :distributor_id

      t.timestamps null: false
    end
  end
end
