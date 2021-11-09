class RemoveNameFromActivities < ActiveRecord::Migration[6.1]
  def change
    remove_column :activities, :name, :string
    remove_column :activities, :description, :string
  end
end
