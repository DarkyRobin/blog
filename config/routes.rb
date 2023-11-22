Rails.application.routes.draw do
  resources :posts
  resources :articles
  # resources :users

  # root "users#index"
  get '/users' => 'users#index'
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create', as: 'create_user'
  delete '/users/:id', to: 'users#destroy', as: 'delete_user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update', as: 'update_user'
  get '/users' => 'users#show', as: 'user'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
