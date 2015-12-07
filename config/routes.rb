Rails.application.routes.draw do
  get '/' => "requests#new"
  get '/looks' => "looks#home"
  
  resources :requests, only: [:new, :create, :show, :index]

end
