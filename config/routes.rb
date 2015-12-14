Rails.application.routes.draw do

  get 'favorites/create'

  get 'favorites/destroy'

  root to: 'articles#index'

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :articles, only: [:index]
end
