class AddReferenceToBunkers < ActiveRecord::Migration[6.0]
  def change
    add_reference :bunkers, :user, null: false, foreign_key: true
  end
end
