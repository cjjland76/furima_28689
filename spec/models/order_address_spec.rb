require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  describe '商品購入' do
    before do
      @order_address = FactoryBot.build(:order_address)
    end
    
    it 'zip_codeが空だと購入できない' do
      @order_address.zip_code = ''
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Zip code can't be blank")
    end
    it 'prefectureが空だと購入できない' do
      @order_address.prefecture = ''
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Prefecture can't be blank")
    end
    it 'cityが空だと購入できない' do
      @order_address.city = ''
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("City can't be blank")
    end
    it 'address1が空だと購入できない' do
      @order_address.address1 = ''
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Address1 can't be blank")
    end
    it 'phone_numberが空だと購入できない' do
      @order_address.phone_number = ''
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Phone number can't be blank")
    end
    it 'phone_numberが数字ではないと購入できない' do
      @order_address.phone_number = 'aaa'
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Phone number is not a number")
    end
    it 'zip_codeに(-)がないと購入できない' do
      @order_address.zip_code = '1234567'
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Zip code is invalid. Include hyphen(-)")
    end
    it 'カード情報を入れないと購入できない' do
      @order_address.token = ''
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Token can't be blank")
    end

  end
end
