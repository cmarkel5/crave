FactoryGirl.define do

  sequence :name do |n|
    "Name#{n}"
  end

  sequence :email do |n|
    "email-#{n}@email.com"
  end

  factory :customer do
    name
    email
    password              "foobar"
    password_confirmation "foobar"
  end
end
