FactoryGirl.define do
  factory :user do
    password "13245678"
    sequence(:email){|n| "dummy_#{n}@factory.com"}

  end
end
