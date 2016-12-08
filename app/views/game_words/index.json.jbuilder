json.array!(@game_words) do |game_word|
  json.extract! game_word, :id, :game_id, :word_id, :text
  # json.index Game.all
  json.index Word.all[:word_id[0].to_i]["index"]
#  json.url game_word_url(game_word, format: :json)
end
