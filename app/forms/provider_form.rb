class ProviderForm < Reform::Form
  include Reform::Form::ActiveModel
  model :provider

  property :name
  property :photo
  property :introduction
  property :site_url
  property :address
  property :tel
  property :fax
  property :certificate
  property :working_time
  property :holidays

  validates :name, presence: true
end