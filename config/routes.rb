Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'parcels', to: 'parcels#index'
  get 'parcels/:id', to: 'parcels#show'
  post 'parcels', to: 'parcels#create'
  delete 'parcels/:id', to: 'parcels#destroy'
  put 'parcels/:id', to: 'parcels#update'

  #Setting up Auth Routes
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile/', to: 'users#profile'
end