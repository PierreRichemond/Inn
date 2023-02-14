class ChangeLatitudeLongitude < ActiveRecord::Migration[6.1]
  def change
    rename_column :activities, :longitude, :lng
    rename_column :activities, :latitude, :lat
  end
end
