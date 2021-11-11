class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)


    if @booking.save
      @booking.save
      # MessageMailer.with(start_date: booking_params[:start_date], end_date: booking_params[:end_date]).new_email.deliver_now

      flash[:success] = "Thank you for your message! We'll get contact you soon!"
      redirect_to root_path
    else
      flash.now[:error] = "Your order message had some errors. Please check the message and resubmit."
      redirect_to rooms_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :room_id)
  end
end
