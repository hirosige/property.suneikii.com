class AddSuretyCompanyIdToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :surety_company_id, :integer
  end
end
