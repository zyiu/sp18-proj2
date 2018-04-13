class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.integer :price
      t.text :description
      t.string :topic

      t.timestamps
    end
  end
end
