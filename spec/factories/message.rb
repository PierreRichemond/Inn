# spec/factories/activity.rb

FactoryBot.define do
  factory :message do
    email { "Joe@gmail.com" }
    name { "Joe" }
    nickname { "Jojo" }
    message { "Hello World" }
  end
end
