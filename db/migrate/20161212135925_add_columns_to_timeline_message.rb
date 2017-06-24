class AddColumnsToTimelineMessage < ActiveRecord::Migration
  def change
    add_column :timeline_messages, :user_id, :integer
    add_column :timeline_messages, :posted_at, :datetime
  end
end
