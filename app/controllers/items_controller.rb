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
    Item.create(item_params)
  end

  def show
  end

  private

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def item_params
    params.require(:item).permit(:image, :item_name, :product)
  end
end

# params.require(:item).permit(:image, :item_name, :product, :category, :status, :delivery_fee, :delivery_area, :delivery_days, :price)