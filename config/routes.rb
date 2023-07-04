Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :families
  resources :guests
  resources :sponsors
end
