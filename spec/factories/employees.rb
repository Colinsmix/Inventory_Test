# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    first_name "John"
    last_name "Doe"
    sequence(:email) { |n| "example#{n}@example.com" } 
  end
end
