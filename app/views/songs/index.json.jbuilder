json.array!(@songs) do |song|
  json.extract! song, :id, :title, :artist, :lyrics
  #json.id song.id
  #json.words Word.all.for_song(song.id)
  json.url song_url(song, format: :json)
end
