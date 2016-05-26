class ExampleTranslation < ApplicationRecord
    belongs_to  :source_example,
                class_name: "Example",
                foreign_key: "source_id"
    belongs_to  :destination_example,
                class_name: "Example",
                foreign_key: "destination_id"
end
