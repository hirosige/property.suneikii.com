class CreateCourseMenus < ActiveRecord::Migration
  def change
    create_table :course_menus do |t|
      t.integer :menu_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
