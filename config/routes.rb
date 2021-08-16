Rails.application.routes.draw do
  resources :dream_villagers, only: [:index, :create, :show, :destroy]
  resources :user_villagers, only: [:index, :create, :destroy]
  resources :villager_personalities, only: [:index, :show]
  resources :personalities, only: [:index, :show]
  resources :villagers, only: [:index, :show, :create] 
  resources :players, only: [:create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
