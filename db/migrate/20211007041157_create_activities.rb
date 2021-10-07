class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :price
      t.text :description
      t.string :url
      t.string :phone

      t.timestamps
    end
  end
end
