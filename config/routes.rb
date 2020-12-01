Rails.application.routes.draw do
  get 'shoes', to: 'shoes#index'
  get 'shoes/:id', to: 'shoes#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
