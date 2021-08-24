Rails.application.routes.draw do
  resources :dream_villagers, only: [:index, :create, :show, :destroy]
  resources :user_villagers, only: [:index, :show, :create, :destroy]
  resources :villager_personalities, only: [:index, :show]
  resources :personalities, only: [:index, :show]
  resources :villagers, only: [:index, :show, :create] 
  resources :players, only: [:index, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/user_villagers/:id', to: 'user_villagers#show'
  get '/players/:id/townies', to: 'players#townies'
  get '/players/:id/dreamies', to: 'players#dreamies'
  # post '/players/:id/townies', to: 'players#create_townies'  # should go to a different method then the get request

  patch '/villagers', to: 'villagers#create'

  delete '/user_villagers/:id', to: 'user_villagers#destroy'
  delete '/dream_villagers/:id', to: 'dream_villagers#destroy'
end
