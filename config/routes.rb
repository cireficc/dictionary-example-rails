Rails.application.routes.draw do
  resources :example_translations
  resources :word_translations
  resources :examples
  resources :words
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
