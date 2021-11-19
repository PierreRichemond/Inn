class PaymentsController < ApplicationController
  def new
    @booking = current_user.booking_previews.where(state: 'pending').find(params[:booking_preview_id])
    @length_of_stay = (@booking.end_date - @booking.start_date).to_i + 1
  end
end
