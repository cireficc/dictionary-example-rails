w1 = Word.create
w2 = Word.create
word_translation = WordTranslation.create(source_id: w1.id, destination_id: w2.id)

e1 = Example.create
e2 = Example.create
example_translation = ExampleTranslation.create(source_id: e1.id, destination_id: e2.id)