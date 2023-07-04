Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :families
  resources :guests
  resources :sponsors
  get '/invite_family', to: 'families#index'
  get '/invite_guest', to: 'guests#index'
  get '/invite_sponsor', to: 'sponsors#index'
  get '/index', to: 'home#index'
  get '/sponsor_invites', to: 'home#sponsor_invites'
  get '/guest_invites', to: 'home#guest_invites'
  get '/family_invites', to: 'home#family_invites'
end
