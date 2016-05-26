class Word < ApplicationRecord
    has_many    :word_translations,
                class_name: "WordTranslation",
                foreign_key: "source_id"
    has_many    :source_words,
                through: :word_translations
    has_many    :inverse_word_translations,
                class_name: "WordTranslation",
                foreign_key: "destination_id"
    has_many    :destination_word_translations,
                through: :inverse_word_translations
                
    enum language: Language.languages
end
