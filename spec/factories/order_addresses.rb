FactoryBot.define do
  factory :order_address do
    zip_code     { '123-4567' }
    prefecture   { 1 }
    city         { '東京都' }
    address1     { '1-1' }
    phone_number { 99999999999 }
  end
end
