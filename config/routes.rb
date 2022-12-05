Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'parcels', to: 'parcel#index',
  get 'parcels/:id', to: 'parcel#show',
  post 'parcels', to: 'parcel#create',
  delete 'parcels/:id', to: 'parcel#destroy',
  put 'parcels/:id', to: 'parcel#update'

  # Defines the root path route ("/")
  # root "articles#index"
end
