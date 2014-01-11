# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dish do
    name "MyString"
    price_in_cents 1
    restaurant_id 1
    category_id 1
    description "MyText"
  end
end
