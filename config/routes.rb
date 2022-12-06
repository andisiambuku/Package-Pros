Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'parcels', to: 'parcels#index'
  get 'parcels/:id', to: 'parcels#show'
  post 'parcels', to: 'parcels#create'
  delete 'parcels/:id', to: 'parcels#destroy'
  put 'parcels/:id', to: 'parcels#update'

  # route our requests, for the signup which is a create action.
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
    end
  end

 
end

  
  


