Rails.application.routes.draw do
  get 'shops/index'
  root to: "homes#index"
  get "homes/login"
  devise_for :shops
  devise_for :users
  resources :vegetables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
