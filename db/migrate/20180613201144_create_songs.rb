class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
    t.string :name
    t.string :uri
    t.string :artist
    t.string :image
    t.integer :upvotes
    t.integer :downvotes

  end
 end
end
