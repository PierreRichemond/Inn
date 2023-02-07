class PaymentsController < ApplicationController
  def new
    @booking = current_user.booking_attempts.where(state: 'pending').find(params[:booking_attempt_id])
    @length_of_stay = (@booking.end_date - @booking.start_date).to_i + 1
  end
end
