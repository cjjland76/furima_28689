class OrderAddress

  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :zip_code, :prefecture, :city, :address1, :address2, :phone_number, :token

  phone_REGEX = /\A[0-9]+\z/.freeze
  zip_REGEX = /\A[0-9]{3}-[0-9]{4}\z/.freeze

  with_options presence: true do
    validates :token
    validates :zip_code, format: {with: zip_REGEX, message: "is invalid. Include hyphen(-)"}
    validates :prefecture
    validates :city
    validates :address1
    validates :phone_number, format: { with: phone_REGEX }, numericality: { only_integer: true, ess_than: 99999999999 }
  end



  def save
    # binding.pry
    order = Order.create(user_id: user_id, item_id: item_id)
    DeliveryAddress.create(item_id: item_id, zip_code: zip_code, prefecture: prefecture, city: city, address1: address1, address2:address2, phone_number: phone_number, order_id: order.id)
  end
end

