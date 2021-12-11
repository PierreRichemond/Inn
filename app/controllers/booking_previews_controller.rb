class BookingPreviewsController < ApplicationController

  def create
    room = Room.find(params[:room_id])
    @booking_preview = BookingPreview.create!(
      room: room, room_name: room.name,
      amount: price_of_stay(room.price, ((params[:end_date].to_date - 1) - params[:start_date][0..9].to_date).to_i + 1),
      state: 'pending',
      user: current_user,
      start_date: params[:start_date][0..9],
      end_date: params[:end_date].to_date - 1)

    @length_of_stay = (@booking_preview.end_date - @booking_preview.start_date).to_i + 1
    already_booked = availibilities

    if already_booked == true
      redirect_to rooms_path
      flash[:danger] = "Your dates don't match availibilities. Please check the again and resubmit."
    else
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: room.name,
        amount: @booking_preview.amount_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: booking_preview_url(@booking_preview),
      cancel_url: booking_preview_url(@booking_preview)
    )
    @booking_preview.update(checkout_session_id: session.id)
    redirect_to new_booking_preview_payment_path(@booking_preview)

    end
  end

  def show
    @booking_preview = current_user.booking_previews.find(params[:id])
    @length_of_stay = (@booking_preview.end_date - @booking_preview.start_date).to_i + 1
    flash[:success] = "Thank you for your booking! We will contact you soon!"
  end

  private

  def booking_params
    params.require(:booking_preview).permit(:start_date, :end_date, :room_id, :user_id)
  end

  def availibilities
    @date_start = @booking_preview.start_date.strftime("%Y-%m-%d")
    @date_end = @booking_preview.end_date.strftime("%Y-%m-%d")
    already_booked = false
    @all_bookings = Booking.all

    @all_bookings.each do |booking|
      arrival_date = booking.start_date.strftime("%Y-%m-%d")
      leave_date = booking.end_date.strftime("%Y-%m-%d")
      if @date_start.between?(arrival_date, leave_date) || @date_end.between?(arrival_date, leave_date) || @date_start < Time.now
        if booking.room_id == @booking_preview.room_id
          already_booked = true
        end
      end
    end
    already_booked
  end

  def price_of_stay(room_price, number_of_night)
    price = 0
    price = room_price * number_of_night if number_of_night.between?(1, 4) # true
    if number_of_night.between?(5, 6)
      price += room_price * 4
      price += (room_price * (number_of_night - 4)) * 0.8
    elsif number_of_night == 7
      price += room_price * 4
      price += room_price * 2 * 0.8
      price += room_price * 0.75
    elsif number_of_night > 7
      price += room_price * 4
      price += room_price * 2 * 0.8
      price += room_price * 0.75
      price += room_price * (number_of_night - 7) * 0.70
    end
    price
  end
end
