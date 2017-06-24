class CreateTimelineMessages < ActiveRecord::Migration
  def change
    create_table :timeline_messages do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
