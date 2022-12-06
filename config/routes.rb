Rails.application.routes.draw do
<<<<<<< HEAD
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/', to: 'parcels#index'
  get 'parcels/:id', to: 'parcels#show'
  post 'parcels', to: 'parcels#create'
  delete 'parcels/:id', to: 'parcels#destroy'
  put 'parcels/:id', to: 'parcels#update'

 
end
=======
  # route our requests, for the signup which is a create action.
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
    end
  end
end
>>>>>>> aa8b16dc6ebe2a87ed29687233d6f3ef1f6b7aca
