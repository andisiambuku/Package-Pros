Rails.application.routes.draw do
# Setting up health check route
get '/', to: 'healthchecks#index'
#setting parcel routes
  resources :parcels

  #Setting up Auth Routes
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile/', to: 'users#profile'
end