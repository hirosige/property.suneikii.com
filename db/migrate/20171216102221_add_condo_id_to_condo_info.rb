class AddCondoIdToCondoInfo < ActiveRecord::Migration
  def change
    add_column :condo_infos, :condo_id, :integer
  end
end
