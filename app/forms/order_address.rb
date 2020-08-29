class OrderAddress

  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :zip_code, :prefecture, :city, :address1, :address2, :phone_number, :token

  def save
    # binding.pry
    order = Order.create(user_id: user_id, item_id: item_id)
    DeliveryAddress.create(item_id: item_id, zip_code: zip_code, prefecture: prefecture, city: city, address1: address1, address2:address2, phone_number: phone_number, order_id: order.id)
  end
end

