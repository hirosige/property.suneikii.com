class ChangeColumnsToLandInfos < ActiveRecord::Migration
  def change
    change_column :land_infos, :latitude, :decimal, :precision => 16, :scale => 13
    change_column :land_infos, :longitude, :decimal, :precision => 16, :scale => 13
  end
end
