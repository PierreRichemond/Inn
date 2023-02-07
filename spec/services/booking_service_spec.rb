RSpec.describe BookingService, type: :model do
  describe '#self.availibilities(booking_attempt)' do
    let(:user) { create(:user) }
    let(:room) { create(:room) }
    let(:booking_attempt) { create(:booking_attempt) }
    let(:booking1) { create(:booking, start_date: 10.days.ago, end_date: 8.days.ago) }
    let(:booking2) { create(:booking, start_date: 4.days.ago, end_date: 3.days.ago) }

    context 'checks for availibilities' do
      it "return true when does not overlaps with already booked dates" do
        booking_attempt.update(start_date: 12.days.ago, end_date: 11.days.ago)
        expect(BookingService.availibilities(booking_attempt)).to eq(true)
        booking_attempt.update(start_date: 7.days.ago, end_date: 5.days.ago)
        expect(BookingService.availibilities(booking_attempt)).to eq(true)
        booking_attempt.update(start_date: 2.days.ago, end_date: 1.days.ago)
        expect(BookingService.availibilities(booking_attempt)).to eq(true)
      end

      it "return false when does overlaps with already booked dates" do
        booking_attempt.update(start_date: 12.days.ago, end_date: 9.days.ago)
        expect(BookingService.availibilities(booking_attempt)).to eq(false)
        booking_attempt.update(start_date: 7.days.ago, end_date: 1.days.ago)
        expect(BookingService.availibilities(booking_attempt)).to eq(false)
        booking_attempt.update(start_date: 4.days.ago, end_date: 1.days.ago)
        expect(BookingService.availibilities(booking_attempt)).to eq(false)
      end
    end
  end

  describe '#self.price_of_stay(room_price_per_night, number_of_night)' do
    it "checks the proper price for each number of nights" do
      expect(BookingService.price_of_stay(1, 100)).to eq(100)
      expect(BookingService.price_of_stay(2, 100)).to eq(200)
      expect(BookingService.price_of_stay(3, 100)).to eq(300)
      expect(BookingService.price_of_stay(4, 100)).to eq(400)
      expect(BookingService.price_of_stay(5, 100)).to eq(480)
      expect(BookingService.price_of_stay(6, 100)).to eq(560)
      expect(BookingService.price_of_stay(7, 100)).to eq(635)
      expect(BookingService.price_of_stay(8, 100)).to eq(705)
      expect(BookingService.price_of_stay(10, 100)).to eq(845)
    end
  end
end
