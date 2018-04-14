Rails.application.routes.draw do
  root to: "welcome#index"
  get "/login", to: "sessions#new"
  get "/auth/twitter", as: :twitter_login
  get '/auth/twitter/callback', to: "sessions#create"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  post "/search", to: "locations#search"
  get "/search", to: "locations#search"
  post "/locations", to: "locations#search"
  get '/auth/twitter', :as => :twitter_login
  get '/auth/twitter/callback', to: "sessions#create"
  resources :users, only: [:new, :create, :show]
  resources :locations, only: [:index, :show]
end
