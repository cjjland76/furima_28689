class DeliveryAddress < ApplicationRecord
  belongs_to :order

  with_options presence: true do
    validates :zip_code
    validates :prefecture
    validates :city
    validates :address1
    validates :phone_number
  end
end
