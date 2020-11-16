class CreateBunkers < ActiveRecord::Migration[6.0]
  def change
    create_table :bunkers do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.integer :capacity
      t.string :address
      t.integer :rating
      t.string :photo

      t.timestamps
    end
  end
end
