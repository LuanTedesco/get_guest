Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'guests/family_invite', to: 'guests#family_invite'
  get 'guests/guest_invite', to: 'guests#guest_invite'
  get 'guests/sponsor_invite', to: 'guests#sponsor_invite'
  get 'guests/new_family_presence', to: 'guests#new_family_presence'
  get 'guests/new_guest_presence', to: 'guests#new_guest_presence'
  get 'guests/new_sponsor_presence', to: 'guests#new_sponsor_presence'
  post 'guests/create_family_presence', to: 'guests#create_family_presence', as: 'create_family_presence'
  post 'guests/create_guest_presence', to: 'guests#create_guest_presence', as: 'create_guest_presence'
  post 'guests/create_sponsor_presence', to: 'guests#create_sponsor_presence', as: 'create_sponsor_presence'
end
