class ChangeColumnFromTimeline < ActiveRecord::Migration
  def change
    rename_column :timelines, :message_id, :timeline_message_id
  end
end
