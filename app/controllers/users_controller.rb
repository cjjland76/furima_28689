class UsersController < ApplicationController
 
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @items = user.items
    @item = Item.find(params[:id])
  end
end
