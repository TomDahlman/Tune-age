class Song < ActiveRecord::Base
  attr_accessible :artist_id, :title
  
  belongs_to :artist
  
end
