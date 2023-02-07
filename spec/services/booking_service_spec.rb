require 'spec_helper'

RSpec.describe BookingService, type: :model do
  describe '#self.room_available?(booking_attempt)' do
    let(:user) { create(:user) }
    let(:room) { create(:room) }
    let(:booking_attempt) { create(:booking_attempt, room_id: room.id) }
    let(:booking1) { create(:booking, start_date: 8.days.from_now, end_date: 10.days.from_now, room_id: room.id) }
    let(:booking2) { create(:booking, start_date: 3.days.from_now, end_date: 4.days.from_now, room_id: room.id) }

    context 'checks for room_available?' do
      it "return true when does not overlaps with already booked dates" do
        booking1
        booking2
        booking_attempt.update(start_date: 11.days.from_now, end_date: 12.days.from_now)
        expect(BookingService.room_available?(booking_attempt.reload)).to eq(true)
        booking_attempt.update(start_date: 5.days.from_now, end_date: 7.days.from_now)
        expect(BookingService.room_available?(booking_attempt.reload)).to eq(true)
      end

      it "return false when overlaps with already booked dates" do
        booking1.reload
        booking2.reload
        booking_attempt.update(start_date: 1.days.from_now, end_date: 2.days.from_now)
        expect(BookingService.room_available?(booking_attempt.reload)).to eq(false)
        booking_attempt.update(start_date: 9.days.from_now, end_date: 12.days.from_now)
        expect(BookingService.room_available?(booking_attempt.reload)).to eq(false)
        booking_attempt.update(start_date: 1.days.from_now, end_date: 7.days.from_now)
        expect(BookingService.room_available?(booking_attempt.reload)).to eq(false)
      end

      it "return false when start date > end date" do
        booking1.reload
        booking2.reload
        booking_attempt.update(start_date: 3.days.from_now, end_date: 2.days.from_now)
        expect(BookingService.room_available?(booking_attempt.reload)).to eq(false)
      end
    end
  end

  describe '#self.price_of_stay(room_price_per_night, number_of_night)' do
    it "checks the proper price for each number of nights" do
      expect(BookingService.price_of_stay(100, 1)).to eq(100)
      expect(BookingService.price_of_stay(100, 2)).to eq(200)
      expect(BookingService.price_of_stay(100, 3)).to eq(300)
      expect(BookingService.price_of_stay(100, 4)).to eq(400)
      expect(BookingService.price_of_stay(100, 5)).to eq(480)
      expect(BookingService.price_of_stay(100, 6)).to eq(560)
      expect(BookingService.price_of_stay(100, 7)).to eq(635)
      expect(BookingService.price_of_stay(100, 8)).to eq(705)
      expect(BookingService.price_of_stay(100, 10)).to eq(845)
    end
  end
end
