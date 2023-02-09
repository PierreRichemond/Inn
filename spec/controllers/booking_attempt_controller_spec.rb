require 'rails_helper'

RSpec.describe BookingAttemptsController, type: :controller do
  describe '#create' do
    let!(:room1) { create(:room) }
    let!(:booking) { create(:booking, start_date: 8.days.from_now, end_date: 10.days.from_now, room_id: room1.id, state: "Paid") }
    let!(:booking_attempt) { create(:booking_attempt, amount_cents: 4343, checkout_session_id: 1234) }
    login_user

    it "assigns @rooms" do
      allow(BookingService).to receive(:price_of_stay) { 4343 }
      allow(BookingAttemptService).to receive(:create) { booking_attempt }
      allow(BookingService).to receive(:room_available?) { true }

      expect(Stripe::Checkout::Session).to receive(:create).with(
        payment_method_types: ['card'],
        line_items: [{
          name: room1.name,
          amount: 4343,
          currency: 'eur',
          quantity: 1
        }],
        success_url: booking_attempt_url(booking_attempt),
        cancel_url: booking_attempt_url(booking_attempt)
      ) { double(id: 1234) }

      post :create, params: { room_id: room1.id }
      expect(booking_attempt.checkout_session_id).to eq('1234')
    end
  end


  # FORMAT TO FIGURE OUT

  # describe "#show" do
  #   login_user
  #   let!(:booking_attempt) { create(:booking_attempt, amount_cents: 4343, checkout_session_id: 1234) }
  #   before(:each) do
  #     get :show, params: { id: booking_attempt.id }
  #   end
  #   it { should respond_with :success }
  #   it { should render_template(:show) }
  # end
end
