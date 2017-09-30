class AddOptionsToApartmentInfo < ActiveRecord::Migration
  def change
    add_column :apartment_infos, :brandnew,          :integer
    add_column :apartment_infos, :more_than_2floors, :integer
    add_column :apartment_infos, :light_on_south,    :integer
    add_column :apartment_infos, :parkinglot,        :integer
    add_column :apartment_infos, :auto_lock,         :integer
    add_column :apartment_infos, :air_con,           :integer
    add_column :apartment_infos, :separate_bath_toilet, :integer
    add_column :apartment_infos, :reheating,         :integer
    add_column :apartment_infos, :wooden_floor,      :integer
    add_column :apartment_infos, :pet,               :integer
  end
end
