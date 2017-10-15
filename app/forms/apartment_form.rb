class ApartmentForm < Reform::Form
  include Reform::Form::ActiveModel
  model :apartment

  property :name
  property :country_id
  property :rent_fee
  property :deposit
  property :utility_fee
  property :address
  property :room_type_id
  property :provider_id
  property :security_deposit
  property :transportation

  validates :title, presence: true
end