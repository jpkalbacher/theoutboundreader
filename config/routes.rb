Rails.application.routes.draw do
  root to: 'articles#index'

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :articles, only: [:index]
  resources :favorites, only: [:create, :destroy, :index]
end
