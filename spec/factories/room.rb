# spec/factories/rooms_translation.rb

FactoryBot.define do
  factory :room do
    name { "Deluxe Suite" }
    price_cents { 10_000 }
  end
end
