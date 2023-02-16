class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :toyName
      t.text :content
      t.integer :price
      t.string :email

      t.timestamps
    end
  end
end
