# == Schema Information
#
# Table name: property_inquiries
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  email          :string(255)
#  body           :text(65535)
#  apartment_id   :integer
#  land_id        :integer
#  condominium_id :integer
#  house_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  tel            :string(255)
#

class PropertyInquiry < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates_format_of :email,
                      :with => /\A([0-9]+|[a-z]+|(\.|\-))+@([0-9]+|[a-z]+)+\.([0-9]+|[a-z]+)+(\.([0-9]+|[a-z]+))*\z/i
  validates :body, presence: true
  validates :tel, presence: true

  def get_property(symbol)
    return Apartment.find(self.apartment_id) if symbol.equal?(:apartment)
    return Land.find(self.land_id) if symbol.equal?(:land)
  end
end
