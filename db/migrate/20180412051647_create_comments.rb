class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :listing_id
      t.string :user_id

      t.timestamps
    end
  end
end
