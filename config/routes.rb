Rails.application.routes.draw do
  root_to: 'books#index'
  resources :books
end