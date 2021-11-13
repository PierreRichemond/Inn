class BookingsController < ApplicationController

  def create
    @booking = Booking.new(start_date: booking_params[:start_date][0..9], end_date: booking_params[:end_date].to_date - 1, room_id: booking_params[:room_id])

    already_booked = availibilities

    if already_booked == true
      flash.now[:error] = "Your dates don't match availibilities. Please check the again and resubmit."
      redirect_to rooms_path
    else
      @booking.save!
      flash[:success] = "Thank you for your booking! We'll get contact you soon!"
      redirect_to root_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :room_id)
  end

  def availibilities
    @date_start = @booking.start_date.strftime("%Y-%m-%d")
    @date_end = @booking.end_date.strftime("%Y-%m-%d")
    already_booked = false
    @all_bookings = Booking.all

    @all_bookings.each do |booking|
      arrival_date = booking.start_date.strftime("%Y-%m-%d")
      leave_date = booking.end_date.strftime("%Y-%m-%d")
      if @date_start.between?(arrival_date, leave_date) || @date_end.between?(arrival_date, leave_date) || @date_start < Time.now
        if booking.room_id == @booking.room_id
          already_booked = true
        end
      end
    end
    already_booked
  end

end
