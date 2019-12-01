Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show, :edit, :update]
  get 'posts/music', to: 'posts#music'
  get 'posts/about', to: 'posts#about'
end
