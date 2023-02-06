# spec/factories/booking_preview.rb

FactoryBot.define do
  factory :booking_preview do
    state { "Past" }
    room_name { "Ronsard" }
    user_id { User.first || create(:user) }
    room_id { Room.first || create(:room) }
    start_date { 2.days.ago }
    end_date { 1.days.ago }
    amount_cents { 0 }
  end
end
