Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :tweets do
    resources :comments, only: :create
  end
  resources :users, only: [:show, :edit, :update]
  get 'posts/music', to: 'posts#music'
  get 'posts/about', to: 'posts#about'
  get 'posts/video', to: 'posts#video'
  get 'posts/tour', to: 'posts#tour'
  get 'posts/news', to: 'posts#news'
end
