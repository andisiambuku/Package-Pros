Rails.application.routes.draw do
  Healthcheck.routes(self)
# Setting up health check route
 
#setting parcel routes
  resources :parcels

  #Setting up Auth Routes
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile/', to: 'users#profile'
end