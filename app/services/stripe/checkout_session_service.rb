module Stripe
  class CheckoutSessionService
    def call(event)
      booking = BookingAttempt.find_by(checkout_session_id: event.data.object.id)
      booking.update(state: 'paid')
      return unless booking.state == 'paid'

      MessageMailer.with(booking: booking).booked_email.deliver_now
      Booking.create!(
        room: booking.room,
        room_name: booking.room.name,
        amount: booking.room.price,
        state: 'paid',
        user: booking.user,
        start_date: booking.start_date,
        end_date: booking.end_date
      )
    end
  end
end
