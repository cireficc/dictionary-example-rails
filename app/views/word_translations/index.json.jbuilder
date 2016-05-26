json.array!(@word_translations) do |word_translation|
  json.extract! word_translation, :id
  json.url word_translation_url(word_translation, format: :json)
end
