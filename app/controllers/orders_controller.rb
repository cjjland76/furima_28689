class OrdersController < ApplicationController
  before_action :set_item, only: [:index, :new, :create]

  def index
    @order = OrderAddress.new
  end

  def new
    @order = OrderAddress.new
  end
  
  def create
    @order = OrderAddress.new(order_params)
    if @order.valid?
      pay_item
      @order.save
      return redirect_to root_path
    end
    render 'index'
  end
  
  private
  
  def order_params
    params.require(:order_address).permit(:zip_code, :prefecture, :city, :address1, :address2, :phone_number).merge(user_id: current_user.id).merge(params.permit(:token, :item_id))
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @item.price,
      card: order_params[:token],
      currency:'jpy'
    )
  end

   def set_item
    @item = Item.find(params[:item_id])
  end
end