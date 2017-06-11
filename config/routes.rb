Rails.application.routes.draw do
  root to: 'home#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :home, only: [:index]
  resources :users, only: [:new, :create]
  resources :locations, only: [:index, :show]
end
