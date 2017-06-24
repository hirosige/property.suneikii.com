class CreatePaperClipTests < ActiveRecord::Migration
  def change
    create_table :paper_clip_tests do |t|
      t.string :namge

      t.timestamps null: false
    end
  end
end
