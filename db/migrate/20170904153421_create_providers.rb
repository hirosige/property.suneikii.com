class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :photo
      t.text :introduction
      t.string :site_url
      t.string :address
      t.string :tel
      t.string :fax
      t.string :certificate
      t.string :working_time
      t.string :holidays

      t.timestamps null: false
    end
  end
end
