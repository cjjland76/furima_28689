FactoryBot.define do
  factory :delivery_address do
    zip_code { "MyString" }
    prefecture { 1 }
    city { "MyString" }
    address1 { "MyString" }
    address2 { "MyString" }
    phone_number { "MyString" }
  end
end
