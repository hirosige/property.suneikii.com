class ProvinceForm < Reform::Form
  include Reform::Form::ActiveModel
  model :province

  property :name_ja
  property :name_th
  property :name_en
  property :original_id
  property :country_original_id
  property :url_safe

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

  validates :country_original_id, {
      :presence => true,
      length: { maximum: 255 }
  }

  validates :url_safe, {
      :presence => true,
      length: { maximum: 255 }
  }

end
