class AddTelToPropertyInquiry < ActiveRecord::Migration
  def change
    add_column :property_inquiries, :tel, :string
  end
end
