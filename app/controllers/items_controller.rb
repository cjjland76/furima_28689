class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]
  before_action :set_item, only: [:edit, :price, :show, :update, :destroy]

  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item.increment!(:view_count)
  end

  def search
    @items = Item.search(params[:keyword])
  end
  
  def price
  end
  
  def update
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def item_params
    params.require(:item).permit(:image, :item_name, :product, :category_id, :status_id, :delivery_fee_id, :delivery_area_id, :delivery_day_id, :price).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
