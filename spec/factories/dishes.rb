# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dish do
    name "Pork Dumplings"
    price_in_cents 400
    restaurant_id 1
    category_id 1
    description "MyText"
  end
end
