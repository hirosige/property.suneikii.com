# == Schema Information
#
# Table name: land_infos
#
#  id                        :integer          not null, primary key
#  remarks                   :text(65535)
#  photo                     :string(255)
#  latitude                  :decimal(16, 13)
#  longitude                 :decimal(16, 13)
#  corner                    :integer
#  low_rise_residential_area :integer
#  no_condition              :integer
#  ownership_or_not          :integer
#  contact_span              :integer
#  conditions                :string(255)
#  update_fee                :integer
#  published_on              :date
#  updating_on               :date
#  property_status           :string(255)
#  availability              :string(255)
#  management_id             :string(255)
#  land_id                   :integer
#  face_with_road            :string(255)
#  send_back                 :string(255)
#  private_way_space         :string(255)
#  urban_planning            :string(255)
#  zoning                    :string(255)
#  topography                :string(255)
#  ownership                 :string(255)
#  land_law_notification     :string(255)
#  deal_way                  :string(255)
#  services                  :text(65535)
#  etc                       :text(65535)
#  school                    :text(65535)
#  shopping                  :text(65535)
#  facilities                :text(65535)
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

FactoryGirl.define do
  factory :land_info do
    remarks "MyText"
    photo "MyString"
    latitude "9.99"
    longitude "9.99"
    corner 1
    low_rise_residential_area 1
    no_condition 1
    ownership_or_not 1
    contact_span 1
    conditions "MyString"
    update_fee 1
    published_on "2017-10-29"
    updating_on "2017-10-29"
    property_status "MyString"
    availability "MyString"
    management_id "MyString"
    land_id 1
    face_with_road "MyString"
    send_back "MyString"
    private_way_space "MyString"
    urban_planning "MyString"
    zoning "MyString"
    topography "MyString"
    ownership "MyString"
    land_law_notification "MyString"
    deal_way "MyString"
    services "MyText"
    etc "MyText"
    school "MyText"
    shopping "MyText"
    facilities "MyText"
  end
end
