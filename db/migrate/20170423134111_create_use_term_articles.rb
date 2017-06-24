class CreateUseTermArticles < ActiveRecord::Migration
  def change
    create_table :use_term_articles do |t|
      t.string :title
      t.integer :use_term_id

      t.timestamps null: false
    end
  end
end
