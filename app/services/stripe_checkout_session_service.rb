class StripeCheckoutSessionService
  def call(event)
    break
    booking = BookingPreview.find_by(checkout_session_id: event.data.object.id)
    booking.update(state: 'paid')
    if booking.state == 'paid'
      flash[:success] = "Thank you for your booking! We will contact you soon!"
      MessageMailer.with(booking: @booking).booked_email.deliver_now
      Booking.create!(booking)
    end
  end
end
