json.array!(@words) do |word|
  json.extract! word, :id, :description, :index, :text, :song_id
  json.url word_url(word, format: :json)
end
