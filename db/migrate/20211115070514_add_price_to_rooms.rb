class AddPriceToRooms < ActiveRecord::Migration[6.1]
  def change
    add_monetize :rooms, :price, currency: { present: false }
  end
end
