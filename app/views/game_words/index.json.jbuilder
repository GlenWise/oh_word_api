json.array!(@game_words) do |game_word|
  json.extract! game_word, :id, :game_id, :word_id, :text
  # json.index Game.all
  json.index Word.all[(game_word.word_id - 1)]["index"]
#  json.url game_word_url(game_word, format: :json)
end