class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.integer :price
      t.text :description
      t.string :topic
      t.string :user_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :num_favorites
      t.string :favorites_user_id

      t.timestamps
    end
  end
end
