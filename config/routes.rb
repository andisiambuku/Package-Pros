Rails.application.routes.draw do
 



  #setting parcel routes
  resources :parcels

  #Setting up Auth Routes
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end