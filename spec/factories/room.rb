# spec/factories/room.rb

FactoryBot.define do
  factory :room do
    name { "Deluxe Suite" }
    price_cents { 0 }
  end
end
