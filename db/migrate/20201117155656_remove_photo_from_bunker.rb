class RemovePhotoFromBunker < ActiveRecord::Migration[6.0]
  def change
    remove_column :bunkers, :photo, :string
  end
end
