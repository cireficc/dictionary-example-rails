class WordTranslation < ApplicationRecord
    belongs_to  :source_word,
                class_name: "Word",
                foreign_key: "source_id"
    belongs_to  :destination_word,
                class_name: "Word",
                foreign_key: "destination_id"
end
