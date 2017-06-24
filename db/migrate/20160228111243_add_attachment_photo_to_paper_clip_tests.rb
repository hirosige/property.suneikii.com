class AddAttachmentPhotoToPaperClipTests < ActiveRecord::Migration
  def self.up
    change_table :paper_clip_tests do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :paper_clip_tests, :photo
  end
end
