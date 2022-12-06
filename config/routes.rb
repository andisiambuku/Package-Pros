Rails.application.routes.draw do
  # route our requests, for the signup which is a create action.
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
    end
  end

  # add the login route
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
    end
  end
end