require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    it 'item_nameが空だと出品できない' do
      @item.item_name = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Item name can't be blank")
    end
    it 'productが空だと出品できない' do
      @item.product = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Product can't be blank")
    end
    it 'categoryが空だと出品できない' do
      @item.category = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank")
    end
    it 'statusが空だと出品できない' do
      @item.status = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Status can't be blank")
    end
    it 'delivery_feeが空だと出品できない' do
      @item.delivery_fee = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Delivery fee can't be blank")
    end
    it 'delivery_areaが空だと出品できない' do
      @item.delivery_area = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Delivery area can't be blank")
    end
    it 'delivery_dayが空だと出品できない' do
      @item.delivery_day = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Delivery day can't be blank")
    end
    it 'priceが空だと出品できない' do
      @item.price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end
    it '価格が300円以下だと出品できない' do
      @item.price = '200'
      @item.valid?
      expect(@item.errors.full_messages).to include('Price must be greater than 300')
    end
    it '価格が10000000円以上だと出品できない' do
      @item.price = '10000000'
      @item.valid?
      expect(@item.errors.full_messages).to include('Price must be less than 9999999')
    end
  end
end
