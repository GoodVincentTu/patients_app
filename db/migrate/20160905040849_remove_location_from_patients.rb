class RemoveLocationFromPatients < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :location, :string
  end
end
