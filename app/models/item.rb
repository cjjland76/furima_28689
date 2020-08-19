class Item < ApplicationRecord
  validates :item_name, :product, presence: true
end
