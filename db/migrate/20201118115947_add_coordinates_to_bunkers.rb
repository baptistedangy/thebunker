class AddCoordinatesToBunkers < ActiveRecord::Migration[6.0]
  def change
    add_column :bunkers, :latitude, :float
    add_column :bunkers, :longitude, :float
  end
end
