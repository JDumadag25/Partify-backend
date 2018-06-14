class AddTrackidToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :trackid, :string
  end
end
