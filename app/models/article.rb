class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :delivery_area
  belongs_to_active_hash :delivery_day

  validates :category, :status, :delivery_fee, :delivery_area, :delivery_day, presence: true

  validates :category, :status, :delivery_fee, :delivery_area, :delivery_day, numericality: { other_than: 1 }
end
