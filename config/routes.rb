Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :tweets, only: [:index, :new, :create]
  resources :users, only: [:edit, :update]
  get 'posts/music', to: 'posts#music'
end
