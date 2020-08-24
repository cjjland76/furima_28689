class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_one :bougth_item

  with_options presence: true do
    price_REGEX = /\A[0-9]+\z/.freeze

    validates :item_name
    validates :product
    validates :category
    validates :status
    validates :delivery_fee
    validates :delivery_area
    validates :delivery_day
    validates :price, format: { with: price_REGEX }, numericality: { only_integer: true, greater_than: 300, less_than: 9_999_999 }
  end

  def was_attached?
    image.attached?
  end
end
