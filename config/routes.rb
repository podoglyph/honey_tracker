Rails.application.routes.draw do
  root to: 'seasons#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :home, only: [:index]
  resources :users, only: [:new, :create]
  resources :locations, only: [:index, :show]
  resources :jobs, only: [:index, :show]
  resources :seasons, only: [:index, :show]
end
