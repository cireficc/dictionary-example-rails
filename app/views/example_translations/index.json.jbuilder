json.array!(@example_translations) do |example_translation|
  json.extract! example_translation, :id
  json.url example_translation_url(example_translation, format: :json)
end
