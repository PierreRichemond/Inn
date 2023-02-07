class BookingService
  def self.price_of_stay(room_price_per_night, number_of_night)
    # Method return a price depending on the length of stay
    return room_price_per_night * number_of_night if number_of_night.between?(1, 4)

    price = 0
    price += room_price_per_night * 4 if number_of_night >= 4
    price += room_price_per_night * 0.8 if number_of_night >= 5
    price += room_price_per_night * 0.8 if number_of_night >= 6
    price += room_price_per_night * 0.75 if number_of_night >= 7
    price += room_price_per_night * (number_of_night - 7) * 0.70 if number_of_night > 7
    price
  end

  def self.availibilities(booking_attempt)
    date_start = booking_attempt.start_date.strftime("%Y-%m-%d")
    date_end = booking_attempt.end_date.strftime("%Y-%m-%d")
    already_booked = false
    already_booked = date_end.to_date <= date_start.to_date || date_start.to_date <= Date.tomorrow ? true : false
    all_bookings = Booking.all

    all_bookings.each do |booking|
      arrival_date = booking.start_date.strftime("%Y-%m-%d")
      leave_date = booking.end_date.strftime("%Y-%m-%d")
      if date_start.between?(arrival_date, leave_date) || date_end.between?(arrival_date, leave_date)
        if booking.room_id == @booking_attempt.room_id
          already_booked = true
        end
      end
    end
    already_booked
  end
end
