Rails.application.routes.draw do
  resources :dream_villagers
  resources :user_villagers
  resources :villager_personalities
  resources :personalities
  resources :villagers
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
