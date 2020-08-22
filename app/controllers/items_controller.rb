class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.create(item_params)
    if @item.save
    redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def price
    item = Item.find(params[:id])
  end

  private

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def item_params
    params.require(:item).permit(:image, :item_name, :product, :category, :status, :delivery_fee, :delivery_area, :delivery_day, :price).merge(user_id: current_user.id)
  end
end

