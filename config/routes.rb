Rails.application.routes.draw do


  devise_for :users


  resources :users, only: [:index, :show]

  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  
  resources :requests, only: [:new, :create, :show, :index]

  resources :stores, only: [:index, :show, :new, :create, :edit, :update]


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

get 'contact', to: 'messages#new', as: 'contact'
post 'contact', to: 'messages#create'

  get '/' => "requests#new"

  get '/looks' => "looks#home"

end
