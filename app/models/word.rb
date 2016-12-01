class Word < ActiveRecord::Base
  belongs_to :song
  validates_presence_of :song_id, :description
  
  scope :for_song,   ->(song_id) { where(song_id: song_id) }
  
end
