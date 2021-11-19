class BookingPreviewsController < ApplicationController

  def create
    room = Room.find(params[:room_id])
    @booking = BookingPreview.create!(room: room, room_name: room.name, amount: room.price, state: 'pending', user: current_user, start_date: params[:start_date][0..9], end_date: params[:end_date].to_date - 1)
    @length_of_stay = (@booking.end_date - @booking.start_date).to_i + 1

    already_booked = availibilities
    if already_booked == true
      redirect_to rooms_path
      flash[:danger] = "Your dates don't match availibilities. Please check the again and resubmit."
    else
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: room.name,
        amount: room.price_cents,
        currency: 'eur',
        quantity: @length_of_stay
      }],
      success_url: booking_preview_url(@booking),
      cancel_url: booking_preview_url(@booking)
    )
    @booking.update(checkout_session_id: session.id)
    redirect_to new_booking_preview_payment_path(@booking)

    end
  end

  def show
    @booking = current_user.booking_previews.find(params[:id])
    @length_of_stay = (@booking.end_date - @booking.start_date).to_i + 1
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :room_id, :user_id)
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
