class AddDetailzToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :detailz, :string
  end
end
