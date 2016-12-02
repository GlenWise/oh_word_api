json.array!(@game_words) do |game_word|
  json.extract! game_word, :id, :game_id, :word_id, :text
  json.url game_word_url(game_word, format: :json)
end
