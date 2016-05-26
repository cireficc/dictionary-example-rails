class CreateWordTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :word_translations do |t|
      t.integer :source_id
      t.integer :destination_id
      t.timestamps
    end
  end
end
