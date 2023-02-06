# spec/factories/user.rb

FactoryBot.define do
  factory :user do
    email { 'John_Doe@mail.com' }
    password { 'password' }
  end
end
