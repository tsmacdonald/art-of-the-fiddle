Rails.application.routes.draw do
  resources :artworks

  root to: 'artworks#index'
end
