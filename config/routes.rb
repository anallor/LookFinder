Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index, :show]

  get '/' => "requests#new"
  get '/looks' => "looks#home"
  
  resources :requests, only: [:new, :create, :show, :index]

  resources :stores, only: [:index, :show, :new, :create]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end
