require 'factory_girl'

FactoryGirl.define do 
  factory :user do
    first_name 'Test User'
    email 'user@test.com'
    password 'secret'
    password_confirmation 'secret'
  end
end

