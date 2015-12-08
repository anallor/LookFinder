Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index, :show]

  get '/' => "requests#new"
  get '/looks' => "looks#home"
  
  resources :requests, only: [:new, :create, :show, :index]

  resources :stores, only: [:index]

end
