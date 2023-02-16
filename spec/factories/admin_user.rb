# spec/factories/user.rb

FactoryBot.define do
  factory :admin_user do
    email { 'John_Doe@mail.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
