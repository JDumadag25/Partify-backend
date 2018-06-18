class AddVoteToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :vote, :boolean
  end
end
