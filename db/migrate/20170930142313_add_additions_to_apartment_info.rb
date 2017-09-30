class AddAdditionsToApartmentInfo < ActiveRecord::Migration
  def change
    add_column :apartment_infos, :number_of_rooms, :integer
    add_column :apartment_infos, :house_insurance, :string
    add_column :apartment_infos, :deal_way, :string
    add_column :apartment_infos, :kitchen_bath, :text
    add_column :apartment_infos, :services, :text
    add_column :apartment_infos, :etc, :text
  end
end
