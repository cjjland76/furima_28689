class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item, optional: true
  has_one :delivery_address


end
