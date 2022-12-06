Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/', to: 'parcels#index'
  get 'parcels/:id', to: 'parcels#show'
  post 'parcels', to: 'parcels#create'
  delete 'parcels/:id', to: 'parcels#destroy'
  put 'parcels/:id', to: 'parcels#update'

  # Defines the root path route ("/")
  # root "articles#index"
end
