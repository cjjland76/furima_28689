class OrdersController < ApplicationController
  def index
    @item = Item.find(params[:item_id]) 
    
  end

  def create
    @item = Item.find(params[:item_id])
    if @item.valid?
      pay_item
      @item.save
      return redirect_to root_path
    end
    render 'index'
  end
  
  
  private
  
  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @item.price,
      card: item_params[:token],
      currency:'jpy'
    )
  end

  def item_params
    params.permit(:price, :token).merge(user_id: current_user.id)
  end
end