class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @booking = BookingAttempt.new
  end

  private

  def room_params
    params.require(:room).permit(:locale, :start_date, :end_date, :room_id)
  end
end
