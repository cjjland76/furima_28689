class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_one_attached :image
  has_one :bougth_item

  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :delivery_area
  belongs_to_active_hash :delivery_day

  with_options presence: true do
    price_REGEX = /\A[0-9]+\z/.freeze

    validates :item_name
    validates :product
    validates :category_id
    validates :status_id
    validates :delivery_fee_id
    validates :delivery_area_id
    validates :delivery_day_id
    validates :price, format: { with: price_REGEX }, numericality: { only_integer: true, greater_than: 300, less_than: 9_999_999 }
  end

  def was_attached?
    image.attached?
  end
end
