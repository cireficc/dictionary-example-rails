class CreateExamples < ActiveRecord::Migration[5.0]
  def change
    create_table :examples do |t|
      t.string :original
      t.string :normalized
      t.string :alternative
      t.integer :language
      t.timestamps
    end
  end
end
