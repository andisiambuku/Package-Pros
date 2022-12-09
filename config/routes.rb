Rails.application.routes.draw do
  Healthcheck.routes(self)
# Setting up health check route
get '/healthcheck', to: proc { [200, {}, ['success']] }
#setting parcel routes
  resources :parcels

  #Setting up Auth Routes
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile/', to: 'users#profile'
end