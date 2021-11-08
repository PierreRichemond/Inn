class RemoveDescriptionFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :description, :string
    remove_column :rooms, :details, :string
    remove_column :rooms, :detailz, :string
  end
end
