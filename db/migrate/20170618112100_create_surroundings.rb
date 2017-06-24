class CreateSurroundings < ActiveRecord::Migration
  def change
    create_table :surroundings do |t|
      t.string :name
      t.decimal :latitude, :precision => 16, :scale => 13
      t.decimal :longitude, :precision => 16, :scale => 13
      t.string :photo

      t.timestamps null: false
    end
  end
end
