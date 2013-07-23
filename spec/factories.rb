FactoryGirl.define do
  factory :subscriber do
    sequence(:first_name)  { |n| "first_name" }
    sequence(:last_name)  { |n| "last_name" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
  end
end