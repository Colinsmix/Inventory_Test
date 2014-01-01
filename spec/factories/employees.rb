# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    first_name "ExampleFirstName"
    last_name "ExampleLastName"
    sequence(:email) { |n| "example#{n}@example.com" } 
  end
end
