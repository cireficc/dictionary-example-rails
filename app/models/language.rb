class Language < ActiveRecord::Base
    self.abstract_class = true
  
    enum language: {
        english: 0,
        spanish: 1,
        french: 2,
        german: 3,
        italian: 4,
        portuguese: 5,
        chinese_mandarin: 6,
        japanese: 7,
        persian: 8
    }
end