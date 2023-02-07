class BookingAttemptService
  def self.create(room, params, current_user)
    # Method return a booking_attempt
    number_of_nights = ((params[:end_date].to_date - 1) - params[:start_date][0..9].to_date).to_i + 1

    BookingAttempt.create!(
      room: room, room_name: room.name,
      amount: BookingService.price_of_stay(room.price, number_of_nights),
      state: 'pending',
      user: current_user,
      start_date: params[:start_date][0..9],
      end_date: params[:end_date].to_date - 1
    )
  end
end
