Rails.application.routes.draw do
  get 'register', to: 'users#new'
  resources :users, only: [:new, :create]

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/surprise', to: 'surprises#index'
  root 'sessions#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
end
