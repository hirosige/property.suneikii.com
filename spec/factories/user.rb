FactoryGirl.define do
  factory :user do
    name                  Faker::Name.name
    email                 Faker::Internet.email
    password              'abCD1234'
    password_confirmation 'abCD1234'
  end
end