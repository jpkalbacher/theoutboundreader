Rails.application.routes.draw do

  root to: 'articles#index'

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :articles, only: [:index]
end
