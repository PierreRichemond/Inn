class BookingAttemptsController < ApplicationController
  require "date"
  before_action :authenticate_user!, only: :create

  def create
    binding.pry
    room = Room.find(params[:room_id])
    booking_attempt = BookingAttemptService.create(room, params, current_user)
    available = BookingService.room_available?(booking_attempt)
    if available == false
      redirect_to rooms_path
      flash[:danger] = "Your dates don't match availibilities. Please check the again and resubmit."
    else
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: room.name,
        amount: booking_attempt.amount_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: booking_attempt_url(booking_attempt),
      cancel_url: booking_attempt_url(booking_attempt)
    )
    booking_attempt.update(checkout_session_id: session.id)
    redirect_to new_booking_attempt_payment_path(booking_attempt)
    end
  end

  def show
    @booking_attempt = current_user.booking_attempts.find(params[:id])
    @length_of_stay = (@booking_attempt.end_date - @booking_attempt.start_date).to_i + 1
    flash[:success] = "Thank you for your booking! We will contact you soon!"
  end

  private

  def booking_params
    params.require(:booking_attempt).permit(:start_date, :end_date, :room_id, :user_id)
  end
end
