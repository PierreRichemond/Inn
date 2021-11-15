class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @rooms = Room.all
    @booking = Booking.new

    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date

    # For a monthly view:
    @bookings = Booking.where(start_date: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

    # Or, for a weekly view:
    @bookings = Booking.where(start_date: start_date.beginning_of_week..start_date.end_of_week)

    # respond_to do |format|
    #   format.html
    #   format.json do
    #     render json: { name: room.name }
    #   end
    # end

  end


  private

  def room_params
    params.require(:room).permit(:locale)
  end
end
