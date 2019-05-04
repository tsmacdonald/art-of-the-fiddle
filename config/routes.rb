Rails.application.routes.draw do
  resources :artworks

  resources :participants
  resources :relationships

  root to: 'artworks#index'
end
