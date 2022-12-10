Rails.application.routes.draw do
 
# Setting up health check route
  mount HealthCheck, at: "/health"


  #setting parcel routes
  resources :parcels

  #Setting up Auth Routes
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end