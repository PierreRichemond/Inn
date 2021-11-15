class RemovePriceFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :price, :integer
  end
end
