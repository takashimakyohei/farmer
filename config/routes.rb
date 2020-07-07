Rails.application.routes.draw do
  root to: "homes#index"
  get "homes/login"
  devise_for :shops
  devise_for :users
  resources :vegetables do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  resources :comments, only: [:destroy]
  resources :shops, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
