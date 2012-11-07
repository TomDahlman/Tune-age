class AddAlbumIdToSong < ActiveRecord::Migration
  def change
    add_column :Song, :album_id, :integer
  end
end
