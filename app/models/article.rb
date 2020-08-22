class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category, :status, :delivery_fee, :delivery_area, :delivery_day

  validates :category, :status, :delivery_fee, :delivery_area, :delivery_day, presence: true

  validates :category, :status, :delivery_fee, :delivery_area, :delivery_day, numericality: { other_than: 1 }
end
