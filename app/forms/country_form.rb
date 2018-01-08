class CountryForm < Reform::Form
  include Reform::Form::ActiveModel
  model :country

  property :name_ja
  property :name_th
  property :name_en
  property :original_id

  validates :name_ja, {
      :presence => true,
      length: { maximum: 255 }
  }

  validates :name_th, {
      :presence => true,
      length: { maximum: 255 }
  }

  validates :name_en, {
      :presence => true,
      length: { maximum: 255 }
  }

  validates :original_id, {
      :presence => true,
      length: { maximum: 255 }
  }

end