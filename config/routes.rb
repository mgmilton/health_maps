Rails.application.routes.draw do
  root to: "welcome#index"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  post "/search", to: "locations#search"
  resources :users, only: [:new, :create, :show]
  resources :locations, only: [:show]
end
