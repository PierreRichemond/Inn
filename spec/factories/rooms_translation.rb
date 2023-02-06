# spec/factories/room.rb

FactoryBot.define do
  factory :rooms_translation do
    room { Room.first || create(:room) }
    locale { "fr" }
    field_name { "ppl" }
    text { "Room for 3" }
  end
end
