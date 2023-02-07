class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @booking = BookingAttempt.new

    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date

    # For a monthly view:
    @bookings = Booking.where(start_date: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

    # Or, for a weekly view:
    @bookings = Booking.where(start_date: start_date.beginning_of_week..start_date.end_of_week)
  end

  def create
    room = Room.find(params[:room_id])
    @booking = BookingAttempt.create!(room: room, room_name: room.name, amount: room.price, state: 'pending', user: current_user, start_date: params[:start_date][0..9], end_date: params[:end_date].to_date - 1)
  end

  private

  def room_params
    params.require(:room).permit(:locale, :start_date, :end_date, :room_id)
  end
end
