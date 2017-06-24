class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :photo
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.integer :price
      t.text :list
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
