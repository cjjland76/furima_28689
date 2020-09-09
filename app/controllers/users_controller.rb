class UsersController < ApplicationController

  def index
    @items = Item.all
  end
  def show
    # binding.pry
    user = User.find(params[:id])
    @nickname = user.nickname
    @items = user.items.order('created_at DESC')
    # binding.pry
    # @item = Item.find(params[:id])
    # @item = current_user.item.find(params[:id])
  end
end
