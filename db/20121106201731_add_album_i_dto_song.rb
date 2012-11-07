class AddAlbumIDtoSong < ActiveRecord::Migration
  def change
    add_column :song, :album_id, :integer
  end
end
