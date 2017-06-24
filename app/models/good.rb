# == Schema Information
#
# Table name: goods
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  size               :integer
#  stock              :integer
#  price              :integer
#  ingredient         :string(255)
#  description        :string(255)
#  tenant_name        :string(255)
#  category           :string(255)
#  keyword            :string(255)
#  gender             :boolean
#  memo               :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  ingredient_id      :integer
#  gender_id          :integer
#  goods_category_id  :integer
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  color_id           :integer
#  size_id            :integer
#  shopper_id         :integer
#  status             :string(255)
#
# Indexes
#
#  index_goods_on_color_id           (color_id)
#  index_goods_on_gender_id          (gender_id)
#  index_goods_on_goods_category_id  (goods_category_id)
#  index_goods_on_ingredient_id      (ingredient_id)
#  index_goods_on_size_id            (size_id)
#

class Good < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :gender
  belongs_to :goods_category
  belongs_to :color
  belongs_to :size
  belongs_to :shopper
  paginates_per 10

  has_attached_file :photo, styles: { large: "600x600", medium: "300x300>", thumb: "100x100>" }
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, locale: :en

  state_machine :status, initial: :unreleased do
    state :unreleased
    state :released

    before_transition on: :unreleased, do: :preview_on
    after_transition on: :released, do: :set_public_date

    event :switch_publish do
      transition :from => :unreleased, :to => :released
      transition :from => :released, :to => :unreleased
    end

    def set_public_date
      p 'after transition'
    end

    def preview_on
      p 'before transition'
    end
  end

end
