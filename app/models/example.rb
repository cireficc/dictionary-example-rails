class Example < ApplicationRecord
    has_many    :example_translations,
                class_name: "ExampleTranslation",
                foreign_key: "source_id"
    has_many    :source_translations,
                through: :example_translations
    has_many    :inverse_example_translations,
                class_name: "ExampleTranslation",
                foreign_key: "destination_id"
    has_many    :destination_example_translations,
                through: :inverse_example_translations
                
    enum language: Language.languages
end
