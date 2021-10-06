class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :ppl
      t.integer :price
      t.string :description
      t.string :details

      t.timestamps
    end
  end
end
