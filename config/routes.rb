Rails.application.routes.draw do
  root 'shoes#index'
  get 'shoes', to: 'shoes#index'
  get 'shoes/:id', to: 'shoes#show'
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  post 'favourites/new/{:shoe_id,:user_id}', to: 'favourites#fav_create'
  get 'favourites/all', to: 'favourites#fav_shoes'
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
