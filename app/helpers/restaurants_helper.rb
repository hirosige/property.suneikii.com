# == Schema Information
#
# Table name: restaurants
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  phone_number :string(255)
#  description  :text(65535)
#  notification :text(65535)
#  floor        :integer
#  chairs       :integer
#  private_room :integer
#  photo        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  slug         :string(255)
#
# Indexes
#
#  index_restaurants_on_slug  (slug) UNIQUE
#

module RestaurantsHelper
end
