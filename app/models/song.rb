class Song < ActiveRecord::Base
  attr_accessible :artist_id, :title, :album_id
  
  belongs_to :artist
  belongs_to :album
  
end
