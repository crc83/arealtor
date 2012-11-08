require 'factory_girl'

FactoryGirl.define do
  factory :user do
    name     "Chuck Norris"
    email    "k.r.norris@mail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
