# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    sequence(:name) { |n| "Four Dollar Place #{n}" }
    address "Chinatown"
    description "Only $4 lunch!"
  end
end
