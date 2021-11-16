class PaymentsController < ApplicationController
  def new
    @booking = current_user.bookings.where(state: 'pending').find(params[:booking_id])
    @length_of_stay = (@booking.end_date - @booking.start_date).to_i + 1
    flash[:success] = "Thank you for your booking! We will contact you soon!"
    MessageMailer.with( booking: @booking).booked_email.deliver_now
  end


end
