module ApplicationHelper

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
